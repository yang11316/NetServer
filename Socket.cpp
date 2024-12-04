#include "Socket.h"

int createNonBlocking()
{
    // 创建服务端用于监听的listenfd
    // SOCK_NONBLOCK 非阻塞
    // SOCK_CLOEXEC 进程间安全
    int listenfd = socket(AF_INET, SOCK_STREAM | SOCK_NONBLOCK | SOCK_CLOEXEC, IPPROTO_TCP);
    if (listenfd < 0)
    {
        printf("%s:%s:%d listen socket create error:%d\n", __FILE__, __FUNCTION__, __LINE__, errno);
        exit(-1);
    }
    return listenfd;
}
// 构造函数：初始化Socket类的实例
// 参数: sockfd - 操作系统的socket描述符，用于标识和操作socket
Socket::Socket(int sockfd) : m_socketfd(sockfd)
{
}

Socket::~Socket()
{
    close(m_socketfd);
}

int Socket::getSocketfd() const
{
    return m_socketfd;
}

// 设置地址重用
// 参数: on - 是否开启地址重用
void Socket::setReuseAddr(bool on)
{
    int optval = on ? 1 : 0;
    setsockopt(m_socketfd, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(optval));
}

// 设置端口重用
// 参数: on - 是否开启端口重用
void Socket::setReusePort(bool on)
{
    int optval = on ? 1 : 0;
    setsockopt(m_socketfd, SOL_SOCKET, SO_REUSEPORT, &optval, sizeof(optval));
}

// 设置TCP_NODELAY
// 参数: on - 是否开启TCP_NODELAY
void Socket::SetTcpNoDelay(bool on)
{
    int optval = on ? 1 : 0;
    setsockopt(m_socketfd, IPPROTO_TCP, TCP_NODELAY, &optval, sizeof(optval));
}

// 设置TCP保活
// 参数: on - 是否开启TCP保活
void Socket::SetKeepAlive(bool on)
{
    int optval = on ? 1 : 0;
    setsockopt(m_socketfd, SOL_SOCKET, SO_KEEPALIVE, &optval, sizeof(optval));
}

// 绑定地址
// 参数: localaddr - 绑定的地址
void Socket::bindAddress(const InetAddress &localaddr)
{
    if (bind(m_socketfd, localaddr.getSockAddr(), sizeof(sockaddr_in)) < 0)
    {
        printf("%s:%s:%d bind socket error:%d\n", __FILE__, __FUNCTION__, __LINE__, errno);
        close(m_socketfd);
        exit(-1);
    }
}

// 监听
// 参数: num - 监听队列的大小
void Socket::listenSocket(int num)
{
    if (listen(m_socketfd, num) < 0)
    {
        printf("%s:%s:%d listen socket error:%d\n", __FILE__, __FUNCTION__, __LINE__, errno);
        exit(-1);
    }
}

/**
 * 接受一个新连接
 *
 * @param peeraddr 输出参数，用于存储连接对等方的地址信息
 * @return 如果成功，返回新连接的文件描述符；如果失败，返回-1
 *
 * 此函数使用accept4系统调用接受一个新连接，并设置新连接的文件描述符为非阻塞模式和关闭执行模式
 * 如果接受连接失败，它会打印错误信息并返回-1
 * 如果成功，它会更新peeraddr以反映连接对等方的地址信息，并返回新连接的文件描述符
 */
int Socket::acceptSocket(InetAddress *peeraddr)
{
    sockaddr_in clientaddr;
    socklen_t clientlen = sizeof(clientaddr);
    int connfd = accept4(m_socketfd, (sockaddr *)&clientaddr, &clientlen, SOCK_NONBLOCK | SOCK_CLOEXEC);
    if (connfd < 0)
    {
        printf("%s:%s:%d accept socket error:%d\n", __FILE__, __FUNCTION__, __LINE__, errno);
        return -1;
    }
    peeraddr->setAddr(clientaddr);
    return connfd;
}
