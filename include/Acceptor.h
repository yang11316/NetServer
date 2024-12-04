#pragma once
#include <functional>
#include "Channel.h"
#include "Socket.h"
#include "InetAddress.h"
#include "EventLoop.h"

class Acceptor
{
private:
    EventLoop *m_loop;        // Acceptor对应的事件循环，在构造函数中传入
    Socket *m_servsock;       // 服务端用于监听的socket，在构造函数中创建
    Channel *m_acceptChannel; // Acceptor对应的Channel，在构造函数中创建
public:
    Acceptor(EventLoop *loop, const std::string &ip, const uint16_t port);
    ~Acceptor();
};