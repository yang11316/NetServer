#pragma once
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/tcp.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include "InetAddress.h"

// 创建一个非阻塞的socket。
int createNonBlocking();

class Socket
{
private:
    const int m_socketfd;

public:
    Socket(int sockfd);
    ~Socket();

    int getSocketfd() const;
    void setReuseAddr(bool on);                     // SO_REUSEADDR
    void setReusePort(bool on);                     // SO_REUSEPORT
    void SetTcpNoDelay(bool on);                    // TCP_NODELAY 立即发送小数据包
    void SetKeepAlive(bool on);                     // SO_KEEPALIVE TCP保活
    void bindAddress(const InetAddress &localaddr); // 服务端的socket将调用此函数
    void listenSocket(int num = 128);               // 服务端的socket将调用此函数。
    int acceptSocket(InetAddress *peeraddr);        // 服务端的socket将调用此函数。
};