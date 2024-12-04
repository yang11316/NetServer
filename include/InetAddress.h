#pragma once

#include <arpa/inet.h>
#include <netinet/in.h>
#include <string>

// socket 的地址协议类
class InetAddress
{
private:
    sockaddr_in m_addr;

public:
    InetAddress();
    InetAddress(const std::string &ip, const uint16_t port);
    InetAddress(const sockaddr_in &addr);

    const char *getIp() const;
    uint16_t getPort() const;
    const sockaddr *getSockAddr() const;
    void setAddr(sockaddr_in &clientaddr);
};