#ifndef TEAM104_SHOPPING_H
#define TEAM104_SHOPPING_H
#include "action_manager.h"

#define STATE_READY     0
#define STATE_FOLLOW    1
#define STATE_ASK       2
#define STATE_GOTO      3
#define STATE_GRAB      4
#define STATE_COMEBACK  5
#define STATE_PASS      6
#define STATE_WAIT 	7

void change_status(int newStatus);

#endif // TEAM104_SHOPPING_H
