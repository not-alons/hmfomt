#include "global.h"

struct Animal {
    //0-7
    u32 unk_0x00;
    u32 unk_0x04;
    //8-23
    u8 name[16];
    //24-27
    u32 age:10;
    u32 festivalWinner:1;                   
    u32 brushed:1;
    u32 talked:1;
    u32 affection:8;
};