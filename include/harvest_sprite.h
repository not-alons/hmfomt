#include "npc.h"

struct HarvestSprite {
    //0-19
    struct NPC npc;
    //20-25
    u8 taskExp[3];
    u8 minigameExp[3];
    //26
    u8 task:2;
    u8 workDaysRemaining:3;
    u8 playedMinigame:1;
    //27
    u8 unk_0x1B;
    //28-31
    u32 unk_0x1C;
    //32-35
    u32 unk_0x20;
};

enum HarvestSpriteTask {
    TASK_HARVEST,
    TASK_WATER,
    TASK_ANIMALS,
    TASK_NONE,
    NUM_TASKS = TASK_NONE
};