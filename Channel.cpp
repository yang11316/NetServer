#include "Channel.h"

Channel::Channel(Epoll *ep, int fd) : m_epoll(ep), m_fd(fd)
{
}

Channel::~Channel()
{
}

int Channel::getFd() const
{
    return m_fd;
}

void Channel::useET()
{
    m_events |= EPOLLET;
}

void Channel::enableReading()
{
    m_events |= EPOLLIN;
    m_epoll->updateChannel(this);
}

void Channel::setInEpoll()
{
    m_inEpoll = true;
}

void Channel::setRevents(uint32_t ev)
{
    m_revents = ev;
}

bool Channel::getInEpoll()
{
    return m_inEpoll;
}

uint32_t Channel::getEvents()
{
    return m_events;
}

uint32_t Channel::getRevents()
{
    return m_revents;
}

// 事件处理函数，epoll_wait()返回的时候，执行它。
void Channel::handleEvent()
{
    if (m_revents & EPOLLRDHUP)
    {
        // 对方已关闭，有些系统检测不到，可以使用EPOLLIN，recv()返回0。
        printf("client(eventfd=%d) disconnected.\n", m_fd);
        close(m_fd);
    }
    else if (m_revents & (EPOLLIN | EPOLLPRI))
    {
        // 接收缓冲区中有数据可以读。
        m_readCallback();
    }
    else if (m_revents & EPOLLOUT)
    {
        // 发送缓冲区有空间可以写。
    }
    else
    {
        // 其它事件，都视为错误。
        printf("client(eventfd=%d) error.\n", m_fd);
        close(m_fd); // 关闭客户端的fd。
    }
}

void Channel::newConnectionCallback(Socket *servsock)
{
    InetAddress peeraddr;
    Socket *client_sock = new Socket(servsock->acceptSocket(&peeraddr));
    printf("accept client(fd=%d,ip=%s,port=%d) ok.\n", client_sock->getSocketfd(), peeraddr.getIp(), peeraddr.getPort());
    Channel *channel_client = new Channel(m_epoll, client_sock->getSocketfd());
    channel_client->setReadCallback(std::bind(&Channel::readCallback, channel_client));
    channel_client->useET();
    channel_client->enableReading();
}

void Channel::readCallback()
{
    char buf[1024];
    while (true)
    {
        bzero(&buf, sizeof(buf));
        ssize_t nread = read(m_fd, buf, sizeof(buf));
        if (nread > 0)
        {
            // 把接收到的报文内容原封不动的发回去。
            printf("recv(eventfd=%d):%s\n", m_fd, buf);
            send(m_fd, buf, strlen(buf), 0);
        }
        else if (nread == -1 && errno == EINTR) // 读取数据的时候被信号中断，继续读取。
        {
            continue;
        }
        else if (nread == -1 && ((errno == EAGAIN) || (errno == EWOULDBLOCK))) // 全部的数据已读取完毕。
        {
            break;
        }
        else if (nread == 0) // 客户端连接已断开。
        {
            printf("client(eventfd=%d) disconnected.\n", m_fd);
            close(m_fd); // 关闭客户端的fd。
            break;
        }
    }
}

void Channel::setReadCallback(std::function<void()> cb)
{
    m_readCallback = cb;
}
