#include "npc.h"

struct HarvestSprite {
    //0-19
    struct NPC npc;
    //20-22
    u8 taskExp[3];
    //23-25
    u8 unk_0x17[3];
    //26
    u8 task:2;
    u8 workDaysRemaining:3;
    u8 unk_0x1A:1;
    //27
    u8 unk_0x1B;
    //28-31
    u32 unk_0x1C;
    //32-35
    u32 unk_0x20;
};