#include "Acceptor.h"

Acceptor::Acceptor(EventLoop *loop, const std::string &ip, const uint16_t port)
{
    m_loop = loop;
    m_servsock = new Socket(createNonBlocking());
    InetAddress server_addr(ip, port);
    m_servsock->setReuseAddr(true);
    m_servsock->setReusePort(true);
    m_servsock->SetTcpNoDelay(true);
    m_servsock->bindAddress(server_addr);
    m_servsock->listenSocket();

    m_acceptChannel = new Channel(m_loop->getEpoll(), m_servsock->getSocketfd());
    m_acceptChannel->setReadCallback(std::bind(&Channel::newConnectionCallback, m_acceptChannel, m_servsock));
    m_acceptChannel->enableReading();
}

Acceptor::~Acceptor()
{
    delete m_servsock;
    delete m_acceptChannel;
}
