#include "global.h"

struct NPC {
    //0-7
    u32 unk_0x0;
    u32 unk_0x4;
    //8-11
    u32 friendship:8;
    u32 daysLastSpoken:5;
    u32 spokenToday:1;
    u32 spokenCurrentArea:1;
    u32 givenGift:1;
    u32 spokenEver:1;
};