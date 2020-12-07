#include "npc.h"

//Increases/decreases an NPC's friendship
void sub_809E370(struct NPC *npc, u32 amount) {
    u32 total = npc->friendship + amount;

    //Clamps the value between 0 and 255
    if ((s32)total < 0)
        total = 0;
    else if (total > 255)
        total = 255;
    
    npc->friendship = total;
}

//Decreases an NPC's friendship
void sub_809E38C(struct NPC *npc, u32 amount){
    sub_809E370(npc, -amount);
}

//Sets an NPC's friendship value
void sub_809E398(struct NPC *npc, u32 amount) {
    npc->friendship = amount;
}