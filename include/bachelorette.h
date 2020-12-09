#include "npc.h"

struct Bachelorette {
    //0-19
    struct NPC npc;
    //20-23
    u32 love:16;
    u32 playerEvents:3;
    u32 daysSincePlayerEvent:3;
    u32 rivalEvents:3;
    u32 daysSinceRivalEvent:3;
    u32 unk_0x17:3;
};
