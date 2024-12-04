#include "EventLoop.h"

EventLoop::EventLoop() : m_ep(new Epoll)
{
}

EventLoop::~EventLoop()
{
    delete m_ep;
}

void EventLoop::run()
{
    while (true) // 事件循环。
    {
        std::vector<Channel *> channels = m_ep->loop(); // 等待监视的fd有事件发生。

        for (auto &ch : channels)
        {
            ch->handleEvent(); // 处理epoll_wait()返回的事件。
        }
    }
}
