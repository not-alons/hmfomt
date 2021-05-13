#include "global.h"


typedef struct FoodSlot {
    u8 food;
    s8 unk_0x1;
    s8 unk_0x2;
    u8 quantity;
} FoodSlot;
typedef struct Fridge {
    FoodSlot slots[64];
} Fridge;
// Initializes the fridge
Fridge * sub_800B660(Fridge *fridge);


typedef struct __attribute__((__packed__)) ArticleSlot {
    u8 article;
    u8 quantity;
} ArticleSlot;
typedef struct Shelf {
    ArticleSlot slots[64];
} Shelf;
// Initializes the shelf
Shelf * sub_800B8E4(Shelf *shelf);


typedef struct RecordPlayer {
    u8 unk:1;
    u8 album:4;
} RecordPlayer;
// Initializes the record player
void sub_800BB60(RecordPlayer *player);


typedef struct __attribute__((__packed__)) ToolSlot{
    u8 tool;
    u8 quantity;
}ToolSlot;
typedef struct ToolChest{
    ToolSlot slots[64];
}ToolChest;
// Initializes the tool chest
ToolChest * sub_800B2EC(ToolChest *chest);


typedef struct FarmHouse {
    u8 unk_0_0:2;
    u8 unk_0_2:2;
    u8 unk_0_4:2;
    u8 unk_0_6:2;

    u32 unk_1_0:1;
    u32 unk_1_1:1;
    u32 unk_1_2:1;
    u32 unk_1_3:1;
    u32 unk_1_4:1;
    u32 unk_1_5:1;
    u32 unk_1_6:1;
    u32 unk_1_7:8;

    u16 unk_2_7:4;

    u32 unk_3_3:1;
    u32 unk_3_4:1;
    u32 unk_3_5:1;
    u32 unk_3_6:8;

    u32 unk_4_6:1;
    u32 unk_4_7:1;
    
    u8 unk_5_0:1;
    u8 unk_5_1:1;
    u8 unk_5_2:1;
    u8 unk_5_3:1;
    u8 unk_5_4:1;
    u8 unk_5_5:1;
    u8 unk_5_6:1;
    u8 unk_5_7:1;

    Fridge fridge;
    Shelf shelf;
    RecordPlayer player;
    ToolChest chest;
    u8 unk[1];
} FarmHouse;


u8 * sub_800BC58();

FarmHouse * sub_800BE70(FarmHouse *house) {
    house->unk_0_0 = 0;
    house->unk_0_2 = 0;
    house->unk_0_4 = 0;
    house->unk_0_6 = 0;

    house->unk_1_0 = 0;
    house->unk_1_1 = 0;
    house->unk_1_2 = 0;
    house->unk_1_3 = 0;
    house->unk_1_4 = 0;
    house->unk_1_5 = 0;
    house->unk_1_6 = 0;
    house->unk_1_7 = 95;

    house->unk_3_3 = 0;
    house->unk_3_4 = 0;
    house->unk_3_5 = 0;
    house->unk_3_6 = 95;

    house->unk_4_6 = 0;
    house->unk_4_7 = 0;

    house->unk_5_0 = 0;
    house->unk_5_1 = 0;
    house->unk_5_2 = 0;
    house->unk_5_3 = 0;
    house->unk_5_4 = 0;
    house->unk_5_5 = 0;
    house->unk_5_6 = 0;
    house->unk_5_7 = 0;

    sub_800B660(&house->fridge);
    sub_800B8E4(&house->shelf);
    sub_800BB60(&house->player);
    sub_800B2EC(&house->chest);
    sub_800BC58(house->unk);

    return house;
}

u8 sub_800BF14(FarmHouse *house) {
    return (u32)house->unk_0_0;
}

Fridge * sub_800BF1C(FarmHouse *house) {
    u32 temp = house->unk_1_1;
    Fridge *ptr = NULL;

    if(temp > 0)
        ptr = &house->fridge;

    return ptr;
}

Shelf * sub_800BF34(FarmHouse *house) {
    u32 temp = house->unk_1_2;
    if(!temp)
        return NULL;
    else
        return &house->shelf;
}

RecordPlayer * sub_800BF50(FarmHouse *house) {
    u32 temp = house->unk_1_3;
    if(!temp)
        return NULL;
    else
        return &house->player;
}

u8 sub_800BF6C(FarmHouse *house) {
    return house->unk_0_2;
}

u8 sub_800BF74(FarmHouse *house) {
    return house->unk_0_4;
}

u8 sub_800BF7C(FarmHouse *house) {
    return house->unk_0_6;
}

u8 sub_800BF84(FarmHouse *house) {
    return house->unk_1_0;
}

u8 sub_800BF8C(FarmHouse *house) {
    return house->unk_1_4;
}

u8 sub_800BF94(FarmHouse *house) {
    return house->unk_1_5;
}

u8 sub_800BF9C(FarmHouse *house) {
    return house->unk_1_6;
}

u8 sub_800BFA4(FarmHouse *house) {
    return house->unk_1_7;
}

u8 sub_800BFAC(FarmHouse *house) {
    return house->unk_3_3;
}

u8 sub_800BFB4(FarmHouse *house) {
    return house->unk_3_4;
}

u8 sub_800BFBC(FarmHouse *house) {
    return house->unk_3_5;
}

u8 sub_800BFC4(FarmHouse *house) {
    return house->unk_4_6;
}

u8 sub_800BFCC(FarmHouse *house) {
    return house->unk_4_7;
}

u8 sub_800BFD4(FarmHouse *house) {
    return house->unk_5_0;
}

u8 sub_800BFDC(FarmHouse *house) {
    return house->unk_5_1;
}

u8 sub_800BFE4(FarmHouse *house) {
    return house->unk_5_2;
}

u8 sub_800BFEC(FarmHouse *house) {
    return house->unk_5_3;
}

u8 sub_800BFF4(FarmHouse *house) {
    return house->unk_5_4;
}

u8 sub_800BFFC(FarmHouse *house) {
    return house->unk_5_5;
}

u8 sub_800C004(FarmHouse *house) {
    return house->unk_5_6;
}

u8 sub_800C00C(FarmHouse *house) {
    return house->unk_5_7;
}

u8 sub_800C014(FarmHouse *house) {
    return house->unk_3_6;
}

void sub_800C024(FarmHouse *house) {
    u8 temp = house->unk_0_0;
    if(temp < 2)
        house->unk_0_0 = ++temp;
}

Fridge * sub_800C048(FarmHouse *house) {
    u32 temp = house->unk_1_1;
    Fridge *ptr = NULL;

    if(temp > 0)
        ptr = &house->fridge;

    return ptr;
}

Shelf * sub_800C060(FarmHouse *house) {
    u32 temp = house->unk_1_2;
    if(!temp)
        return NULL;
    else
        return &house->shelf;
}

RecordPlayer * sub_800C07C(FarmHouse *house) {
    u32 temp = house->unk_1_3;
    if(!temp)
        return NULL;
    else
        return &house->player;
}

void sub_800C098(FarmHouse *house, u32 param) {
    u8 temp = house->unk_0_0;
    if(temp > 1)
        house->unk_0_2 = param;
}

void sub_800C0BC(FarmHouse *house, u32 param) {
    u8 temp = house->unk_0_0;
    if(temp > 1)
        house->unk_0_4 = param;
}

void sub_800C0E0(FarmHouse *house, u32 param) {
    u8 temp = house->unk_0_0;
    if(temp > 1)
        house->unk_0_6 = param;
}

void sub_800C0FC(FarmHouse *house) {
    if(house->unk_0_0 == 2)
        house->unk_1_0 = 1;
}

void sub_800C118(FarmHouse *house) {
    if(house->unk_0_0 != 0)
        house->unk_1_1 = 1;
}

void sub_800C134(FarmHouse *house) {
    if(house->unk_0_0 != 0)
        house->unk_1_2 = 1;
}

void sub_800C150(FarmHouse *house) {
    house->unk_1_3 = 1;
}

void sub_800C15C(FarmHouse *house) {
    u8 temp = house->unk_0_0;
    if(temp > 1)
        house->unk_1_4 = 1;
}

void sub_800C178(FarmHouse *house) {
    if(house->unk_0_0 != 0)
        house->unk_1_5 = 1;
}

void sub_800C194(FarmHouse *house) {
    house->unk_1_6 = 1;
}

void sub_800C1A0(FarmHouse *house, u32 param) {
    house->unk_1_7 = param;
    switch(house->unk_1_7){
        default:
            house->unk_2_7 = 0;
            break;

        case 0:
            house->unk_2_7 = 7;
            break;

        case 2:
            house->unk_2_7 = 10;
            break;

        case 1:
        case 3:
        case 4:
            house->unk_2_7 = 5;
            break;
    }
}

void sub_800C22C(FarmHouse *house) {
    house->unk_3_3 = 1;
}

void sub_800C238(FarmHouse *house) {
    house->unk_3_4 = 1;
}

void sub_800C244(FarmHouse *house) {
    house->unk_3_5 = 1;
}

void sub_800C250(FarmHouse *house) {
    house->unk_3_5 = 0;
}

void sub_800C25C(FarmHouse *house) {
    if(house->unk_0_0 > 1 && !house->unk_4_6)
        house->unk_4_6 = 1;
}

void sub_800C27C(FarmHouse *house) {
    if(house->unk_0_0 != 0 && sub_800C048(house) != NULL)
        house->unk_4_7 = 1;
}

void sub_800C2A4(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_0 = 1;
}

void sub_800C2BC(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_1 = 1;
}

void sub_800C2D4(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_2 = 1;
}

void sub_800C2EC(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_3 = 1;
}

void sub_800C304(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_4 = 1;
}

void sub_800C31C(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_5 = 1;
}

void sub_800C334(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_6 = 1;
}

void sub_800C34C(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_7 = 1;
}

void sub_800C364(FarmHouse *house, u32 param) {
    house->unk_3_6 = param;
}

// Random
extern s32 sub_80D11E4();

void sub_800C390(FarmHouse *house, u32 param) {
    house->unk_4_6 = 0;

    if(!house->unk_1_6 || house->unk_1_7 == 95)
        return;

    if(house->unk_2_7 > 0)
        house->unk_2_7--;

    switch(house->unk_1_7){
        case 0:
        case 4:
            if(param != 0)
                house->unk_1_7 = 95;
            break;

        case 1:
            if(param != 1)
                house->unk_1_7 = 95;
            break;

        case 2:
        case 3:
            if(param != 2)
                house->unk_1_7 = 95;
            break;
    }
    
    if(house->unk_2_7 == 0 && ((sub_80D11E4() & 0xFF) <= 100) )
        house->unk_1_7 = 95;
}