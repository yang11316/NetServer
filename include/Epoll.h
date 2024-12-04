#pragma once
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <strings.h>
#include <string.h>
#include <sys/epoll.h>
#include <vector>
#include <unistd.h>
#include "Channel.h"

class Channel;

class Epoll
{
private:
    static const int MAX_EVENTS = 1024;
    int m_eppollfd = -1;
    epoll_event m_events[MAX_EVENTS];

public:
    Epoll();
    ~Epoll();
    void updateChannel(Channel *channel);          // 把channel添加/更新到红黑树上，channel中有fd，也有需要监视的事件。
    std::vector<Channel *> loop(int timeout = -1); // 运行epoll_wait()，等待事件的发生，已发生的事件用vector容器返回。
};