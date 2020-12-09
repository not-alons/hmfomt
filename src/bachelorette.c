#include "bachelorette.h"

extern void sub_809E2D4(struct NPC *npc, u32 *param);

//Initializes a Bachelorette struct
void * sub_809E458(struct Bachelorette *bach, u32 *param){
    sub_809E2D4(&bach->npc, param);
    bach->love = 0;
    bach->playerEvents = 0;
    bach->daysSincePlayerEvent = 0;
    bach->rivalEvents = 0;
    bach->daysSinceRivalEvent = 0;
    bach->unk_0x17 = 0;
    return bach;
}

//Returns a Bachelorette's love points
u16 sub_809E498(struct Bachelorette *bach){
    return bach->love;
}

//Returns the number of player heart events
u8 sub_809E49C(struct Bachelorette *bach){
    return bach->playerEvents;
}

//Returns the number of days since a rival heart event was triggered
//was probably meant to return the days since a player heart event, since it's duplicated
u8 sub_809E4A4(struct Bachelorette *bach){
    return bach->daysSinceRivalEvent;
}

//Returns the number of rival heart events
u8 sub_809E4AC(struct Bachelorette *bach){
    return bach->rivalEvents;
}

//Returns the number of days since a rival heart event was triggered
//Duplicate of sub_809E4A4
u8 sub_809E4B4(struct Bachelorette *bach){
    return bach->daysSinceRivalEvent;
}

//Returns the unknown 3bit counter
u8 sub_809E4BC(struct Bachelorette *bach){
    return bach->unk_0x17;
}

//Increases/decreases a Bachelorette's love points
void sub_809E4C4(struct Bachelorette *bach, u32 amount){
    u32 total = bach->love + amount;

    //Clamps the value between 0 and 65535
    if ((s32)total < 0)
        total = 0;
    else if (65535 < total)
        total = 65535;
    
    bach->love = total;
}

//Decreases a Bachelorette's love points
void sub_809E4E8(struct Bachelorette *bach, u32 amount){
    sub_809E4C4(bach, -amount);
}

//Sets a Bachelorette's love points
void sub_809E4F4(struct Bachelorette *bach, u16 amount){
    bach->love = amount;
}

//Increments the number of player heart events
void sub_809E4F8(struct Bachelorette *bach){
    if((u32)bach->playerEvents < 6){
        bach->playerEvents++;
        bach->daysSincePlayerEvent = 0;
    }
}

//Increments the number of rival heart events
void sub_809E520(struct Bachelorette *bach){
    if((u32)bach->rivalEvents < 5){
        bach->rivalEvents++;
        bach->daysSinceRivalEvent = 0;
    }
}

//Increments the unkown 3bit counter
void sub_809E550(struct Bachelorette *bach){
    if((u32)bach->unk_0x17 < 5){
        bach->unk_0x17++;
    }
}


//uknown functions
extern u32 sub_80D11E4();
extern u32 sub_80D0ED0(u32 param_1, u32 param_2);

//Checks if you talked to a bachelorette
void sub_809E574(struct Bachelorette *bach, u8 param_2, u32 param_3){
    //Increase love points if talked to today
    if(sub_809E350(&bach->npc))
        sub_809E4C4(bach, 200);

    //Clear spoken flags
    sub_809E3E8(&bach->npc, param_3);
    
    //Decrease love points if daysLastSpoken > 0 and param_3 < 10
    if(sub_809E340(&bach->npc) && param_3 < 10)
        sub_809E4E8(bach, 200);

    if(param_2 != 0){
        if((u32)bach->playerEvents > 5){
            if(4 < sub_809E340(&bach->npc) && (s32)sub_80D0ED0(sub_80D11E4(), 100) < 10) //No idea what these last two do
                sub_809E4E8(bach, 1000); //Decrease love points
        }else{
            sub_809E4E8(bach, 100); //Decrease love points
        }
    }
    
    //Increment days since heart event counters
    if((u32)bach->daysSincePlayerEvent < 7)
        bach->daysSincePlayerEvent++;
    if((u32)bach->daysSinceRivalEvent < 7)
        bach->daysSinceRivalEvent++;
    
}
