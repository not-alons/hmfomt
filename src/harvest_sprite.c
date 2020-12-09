#include "harvest_sprite.h"

extern void sub_809E2D4(struct NPC *npc, u32 *param);

//Initializes a Harvest Sprite struct
void * sub_809E628(struct HarvestSprite *hsprite, u32 *param){
    sub_809E2D4(&hsprite->npc, param);
    hsprite->task = 3; //3 = none
    hsprite->workDaysRemaining = 0;

    hsprite->unk_0x1A= 0;
    hsprite->unk_0x1C = 0;
    
    hsprite->taskExp[0] = 0;
    hsprite->taskExp[1] = 0;
    hsprite->taskExp[2] = 0;
    
    hsprite->unk_0x17[0] = 0;
    hsprite->unk_0x17[1] = 0;
    hsprite->unk_0x17[2] = 0;
    
    return hsprite;
}

//Returns a sprite's current task
u8 sub_809E65C(struct HarvestSprite *hsprite){
    return hsprite->task;
}

//Returns a sprite's remaining work days
u8 sub_809E664(struct HarvestSprite *hsprite){
    return hsprite->workDaysRemaining;
}

//Returns a sprite's exp for a task
u8 sub_809E66C(struct HarvestSprite *hsprite, u32 task){
    if(task < 3)
        return hsprite->taskExp[task];
    else
        return 0;
}

//Returns an unknown flag
u32 sub_809E680(struct HarvestSprite *hsprite){
    return hsprite->unk_0x1A;
}

//Returns a sprite's ??? for a task
u32 sub_809E688(struct HarvestSprite *hsprite, u32 task){
    if(task < 3)
        return hsprite->unk_0x17[task];
    else
        return 0;
}

//Increases a sprite's task exp
void sub_809E69C(struct HarvestSprite *hsprite, u32 task, u32 amount){
    if(task < 3){
        u32 total = hsprite->taskExp[task] + amount;

        //Clamps the value between 0 and 255
        if ((s32)total < 0)
            total = 0;
        else if (total > 255)
            total = 255;
            
        hsprite->taskExp[task] = total;
    }
}

//Sets a sprite's task and work days
void sub_809E6C4(struct HarvestSprite *hsprite, u32 task, u32 days){
    hsprite->task = task;
    hsprite->workDaysRemaining = days;
}

//Assigns a sprite one work day
void sub_809E6EC(struct HarvestSprite *hsprite){
    hsprite->workDaysRemaining = 1;
}

//Modifies a sprite's friendship and task exp
void sub_809E6FC(struct HarvestSprite *hsprite, u32 task, u8 param){
    u32 temp;

    hsprite->unk_0x1A = TRUE;
    if(param && hsprite->unk_0x17[task] != 31)
        hsprite->unk_0x17[task]++;
    
    if(6 > hsprite->unk_0x17[task])
        temp = 1;
    else if(11 > hsprite->unk_0x17[task])
        temp = 2;
    else if(17 > hsprite->unk_0x17[task])
        temp = 3;
    else
        temp = 4;
    
    if(!param)
        temp = -temp;
        
    sub_809E69C(hsprite, task, temp);
    sub_809E370(&hsprite->npc, 1);
}

//Decrements a sprite's work days and resets the task if done
void sub_809E75C(struct HarvestSprite *hsprite){
    if(hsprite->workDaysRemaining){
        
        hsprite->workDaysRemaining--;
        if(hsprite->workDaysRemaining == 0)
            hsprite->task = 3;
            
        sub_809E38C(&hsprite->npc, 2);
    }
}

//uknown functions
extern u32 sub_80D11E4();
extern u32 sub_80D0ED0(u32 param_1, u32 param_2);

//Checks if you talked to a sprite that day and resets the unknown flag
void sub_809E7A0(struct HarvestSprite *hsprite){
    sub_809E3E8(&hsprite->npc, sub_80D0ED0(sub_80D11E4(), 100));
    hsprite->unk_0x1A = FALSE;
}

//Resets a sprite's unknown value
void sub_809E7C8(struct HarvestSprite *hsprite){
    hsprite->unk_0x1C = 0;
}

//Sets a sprite's unknown value to 1
void sub_809E7D0(struct HarvestSprite *hsprite){
    hsprite->unk_0x1C = 1;
}

//Sets a sprite's unkown value to 2
void sub_809E7D8(struct HarvestSprite *hsprite, u32 *param){
    hsprite->unk_0x20 = *param;
    hsprite->unk_0x1C = 2;
}

//Sets a sprite's unkown value to 3
void sub_809E7E4(struct HarvestSprite *hsprite, u32 *param){
    hsprite->unk_0x20 = *param;
    hsprite->unk_0x1C = 3;
}

//Sets a sprite's unkown value to 4
void sub_809E7F0(struct HarvestSprite *hsprite, u32 *param){
    hsprite->unk_0x20 = *param;
    hsprite->unk_0x1C = 4;
}

//Sets a sprite's unkown value to 5
void sub_809E7FC(struct HarvestSprite *hsprite){
    hsprite->unk_0x1C = 5;
}
