#include "npc.h"

//Copies the first 8 bytes of one NPC to another and returns a pointer
void * sub_809E32C(struct NPC *npc_0,struct NPC *npc_1){
    memcpy(npc_0, npc_1, 8);
}

//Returns an NPC's friendship
u8 sub_809E33C(struct NPC *npc) {
    return npc->friendship;
}

//Returns the days since you last spoke to this NPC
u32 sub_809E340(struct NPC *npc) {
    return npc->daysLastSpoken;
}

//Returns givenGift
bool8 sub_809E348(struct NPC *npc) {
    return npc->givenGift;
}

//Returns spokenToday
bool8 sub_809E350(struct NPC *npc) {
    return npc->spokenToday;
}

//Returns spokenCurrentArea
bool8 sub_809E358(struct NPC *npc) {
    return npc->spokenCurrentArea;
}

//Returns spokenEver
bool8 sub_809E360(struct NPC *npc) {
    return npc->spokenEver;
}

//Copies the first 8 bytes of one NPC to another
void sub_809E368(struct NPC *npc_0,struct NPC *npc_1){
    memcpy(npc_0, npc_1, 8);
}

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
void sub_809E398(struct NPC *npc, u8 amount) {
    npc->friendship = amount;
}

//Sets spoken flags and resets days counter
void sub_809E39C(struct NPC *npc) { 
    if (npc->spokenEver != FALSE) {
        npc->spokenToday = TRUE;
        npc->spokenCurrentArea = TRUE;
    } else {
        npc->spokenEver = TRUE;
    }
    npc->daysLastSpoken = 0;
}

//Sets givenGift and resets days counter
void sub_809E3CC(struct NPC *npc) {
    npc->givenGift = TRUE;
    npc->daysLastSpoken = 0;
}

//Resets spokenCurrentArea
void sub_809E3DC(struct NPC *npc){
    npc->spokenCurrentArea = FALSE;
}

//Checks if the player spoke to an NPC that day and in/decreases friendship
void sub_809E3E8(struct NPC *npc, u32 param){
    //TODO: revise the less than
    if(npc->spokenToday < 1 && !npc->givenGift){ //If didn't speak or give a gift increment the days counter
        if((u32)npc->daysLastSpoken < 31){
            npc->daysLastSpoken++;
        }
        if(param < 10){
            sub_809E38C(npc, 1); //If the unknown parameter is less than 10 decrement their friendship
        }
    }else{
        npc->daysLastSpoken = 0;
    }

    if(npc->spokenToday){
        sub_809E370(npc, 1); //Increment their affection
    }

    //Clear these flags
    npc->spokenToday = FALSE;
    npc->spokenCurrentArea = FALSE;
    npc->givenGift = FALSE;
}
