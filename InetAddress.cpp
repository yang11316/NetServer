#include "InetAddress.h"

InetAddress::InetAddress()
{
}

InetAddress::InetAddress(const std::string &ip, const uint16_t port)
{
    m_addr.sin_family = AF_INET;                    // ipv4
    m_addr.sin_addr.s_addr = inet_addr(ip.c_str()); // ip
    m_addr.sin_port = htons(port);                  // port
}

InetAddress::InetAddress(const sockaddr_in &addr) : m_addr(addr)
{
}

const char *InetAddress::getIp() const
{
    return inet_ntoa(m_addr.sin_addr);
}

uint16_t InetAddress::getPort() const
{
    return m_addr.sin_port;
}

const sockaddr *InetAddress::getSockAddr() const
{
    return (sockaddr *)(&m_addr);
}

void InetAddress::setAddr(sockaddr_in &clientaddr)
{
    m_addr = clientaddr;
}
