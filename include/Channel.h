#pragma once
#include <sys/epoll.h>
#include <functional>
#include "Epoll.h"
#include "InetAddress.h"
#include "Socket.h"

class Epoll;
class Channel
{
private:
    int m_fd = -1;            // Channel拥有的fd，Channel和fd是一对一的关系。
    Epoll *m_epoll = nullptr; // Channel对应的红黑树，Channel与Epoll是多对一的关系，一个Channel只对应一个Epoll。
    bool m_inEpoll = false;   // Channel是否已添加到epoll树上，如果未添加，调用epoll_ctl()的时候用EPOLL_CTL_ADD，否则用EPOLL_CTL_MOD。
    uint32_t m_events = 0;    // fd_需要监视的事件。listenfd和clientfd需要监视EPOLLIN，clientfd还可能需要监视EPOLLOUT。
    uint32_t m_revents = 0;   // fd_已发生的事件
    std::function<void()> m_readCallback;

public:
    Channel(Epoll *ep, int fd);
    ~Channel();

    int getFd() const;

    void useET();                 // 设置边缘触发模式
    void enableReading();         // 设置可读事件
    void setInEpoll();            // 设置Channel已添加到epoll树中
    void setRevents(uint32_t ev); // 设置已发生的事件
    bool getInEpoll();            // 获取Channel是否已添加到epoll树中
    uint32_t getEvents();         // 获取需要监视的事件
    uint32_t getRevents();        // 获取已发生的事件
    void handleEvent();           // 处理事件

    /*
        事件处理的回调函数
    */
    void newConnectionCallback(Socket *servsock);   // 处理新客户端连接请求。
    void readCallback();                            // 处理对端发送过来的消息。
    void setReadCallback(std::function<void()> cb); // 设置可读事件的回调函数。
};
