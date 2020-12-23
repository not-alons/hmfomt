#include "global.h"

struct NPC {
    //0-7
    u32 unk_0x00;
    u32 unk_0x04;
    //8-11
    u32 friendship:8;
    u32 daysLastSpoken:5;
    u32 spokenToday:1;
    u32 spokenCurrentArea:1;
    u32 givenGift:1;
    u32 spokenEver:1;
    //12-19
    u32 unk_0x0C;
    u32 unk_0x10;
};

//Returns the days since you last spoke to this NPC
u32 sub_809E340(struct NPC *npc);

//Returns spokenToday
bool8 sub_809E350(struct NPC *npc);

//Increases/decreases an NPC's friendship
void sub_809E370(struct NPC *npc, u32 amount);

//Decreases an NPC's friendship
void sub_809E38C(struct NPC *npc, u32 amount);

//Checks if the player spoke to an NPC that day and in/decreases friendship
void sub_809E3E8(struct NPC *npc, u32 param);
