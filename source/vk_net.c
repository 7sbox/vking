
#include <fcntl.h>
#include <unistd.h>
#include <sys/sysinfo.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/socket.h>
#include <sys/epoll.h>
#include <netinet/tcp.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#include "vk_net.h"

static const XXXX vknet_params = {
    .bvar = true,
    .ivar1 = 640,
    .ivar2 = 480,
    .iCount = 0,
};