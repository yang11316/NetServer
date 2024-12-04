#include "Epoll.h"

Epoll::Epoll()
{
    m_eppollfd = epoll_create1(EPOLL_CLOEXEC);
    if (m_eppollfd < 0)
    {
        printf("epoll_create1 error\n");
        exit(-1);
    }
}

Epoll::~Epoll()
{
    close(m_eppollfd);
}

void Epoll::updateChannel(Channel *channel)
{
    epoll_event ev;
    ev.data.ptr = channel;
    ev.events = channel->getEvents();
    if (channel->getInEpoll()) // 如果channel已经在树上了。
    {
        if (epoll_ctl(m_eppollfd, EPOLL_CTL_MOD, channel->getFd(), &ev) < 0)
        {
            printf("epoll_ctl mod error\n");
            exit(-1);
        }
    }
    else
    {
        if (epoll_ctl(m_eppollfd, EPOLL_CTL_ADD, channel->getFd(), &ev) < 0)
        {
            printf("epoll_ctl add error\n");
            exit(-1);
        }
        channel->setInEpoll(); // 把channel的inepoll_成员设置为true。
    }
}

std::vector<Channel *> Epoll::loop(int timeout)
{
    std::vector<Channel *> activeChannels;
    bzero(m_events, sizeof(m_events));
    int infds = epoll_wait(m_eppollfd, m_events, MAX_EVENTS, timeout);
    if (infds < 0)
    {
        perror("epoll_wait");
        exit(-1);
    }
    if (infds == 0) // 超时
    {
        printf("epoll_wait() timeout.\n");
        return activeChannels;
    }

    for (int i = 0; i < infds; i++)
    {
        Channel *ch = (Channel *)m_events[i].data.ptr; // 取出已发生事件的channel。
        ch->setRevents(m_events[i].events);            // 设置channel的revents_成员。
        activeChannels.push_back(ch);
    }

    return activeChannels;
}
