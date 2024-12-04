#include "Epoll.h"

class EventLoop
{
private:
    Epoll *m_ep; // 每个事件循环只有一个Epoll。

public:
    EventLoop();
    ~EventLoop();
    void run();              // 运行事件循环。
    inline Epoll *getEpoll() // 返回epoll对象。
    {
        return m_ep;
    }
};
