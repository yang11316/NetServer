#pragma once
#include "EventLoop.h"
#include "Socket.h"
#include "Channel.h"
#include "Acceptor.h"
class TcpServer
{
private:
    EventLoop m_loop;     // 一个TcpServer可以有多个事件循环，
    Acceptor *m_acceptor; // 一个Tcpserver只能有一个Acceptor

public:
    TcpServer(const std::string &ip, const uint16_t &port);
    ~TcpServer();
    void start();
};
