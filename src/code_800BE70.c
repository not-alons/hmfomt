#include "inventory.h"

typedef struct FarmHouse {
    u8 unk_0_0:2; // Number of upgrades
    u8 unk_0_2:2; // Window style
    u8 unk_0_4:2; // Mailbox style
    u8 unk_0_6:2; // Doghouse style

    u32 unk_1_0:1; // Bathroom
    u32 unk_1_1:1; // Refrigerator
    u32 unk_1_2:1; // Shelf
    u32 unk_1_3:1; // Record Player
    u32 unk_1_4:1; // Large bed
    u32 unk_1_5:1; // Carpet
    u32 unk_1_6:1; // Vase
    u32 unk_1_7:8; // Item in vase

    u16 unk_2_7:4; // Unknown

    u32 unk_3_3:1; // Mirror
    u32 unk_3_4:1; // Clock
    u32 unk_3_5:1; // Stocking
    u32 unk_3_6:8; // Item in stocking

    u32 unk_4_6:1; // Fireplace lighted
    u32 unk_4_7:1; // Kitchen
    
    u8 unk_5_0:1;  // Knife
    u8 unk_5_1:1;  // Frying Pan
    u8 unk_5_2:1;  // Pot
    u8 unk_5_3:1;  // Mixer
    u8 unk_5_4:1;  // Whisk
    u8 unk_5_5:1;  // Rolling Pin
    u8 unk_5_6:1;  // Oven
    u8 unk_5_7:1;  // Seasoning Set

    Fridge fridge;
    Shelf shelf;
    RecordPlayer player;
    ToolChest chest;
    u8 unk[1];
} FarmHouse;

u8 * sub_800BC58();

// Initializes the farm
FarmHouse * sub_800BE70(FarmHouse *house) {
    house->unk_0_0 = 0;
    house->unk_0_2 = 0;
    house->unk_0_4 = 0;
    house->unk_0_6 = 0;

    house->unk_1_0 = FALSE;
    house->unk_1_1 = FALSE;
    house->unk_1_2 = FALSE;
    house->unk_1_3 = FALSE;
    house->unk_1_4 = FALSE;
    house->unk_1_5 = FALSE;
    house->unk_1_6 = FALSE;
    house->unk_1_7 = ARTICLE_NONE;

    house->unk_3_3 = FALSE;
    house->unk_3_4 = FALSE;
    house->unk_3_5 = FALSE;
    house->unk_3_6 = ARTICLE_NONE;

    house->unk_4_6 = FALSE;
    house->unk_4_7 = FALSE;

    house->unk_5_0 = FALSE;
    house->unk_5_1 = FALSE;
    house->unk_5_2 = FALSE;
    house->unk_5_3 = FALSE;
    house->unk_5_4 = FALSE;
    house->unk_5_5 = FALSE;
    house->unk_5_6 = FALSE;
    house->unk_5_7 = FALSE;

    sub_800B660(&house->fridge);
    sub_800B8E4(&house->shelf);
    sub_800BB60(&house->player);
    sub_800B2EC(&house->chest);
    sub_800BC58(house->unk);

    return house;
}

// Returns the number of times the house has been upgraded
u8 sub_800BF14(FarmHouse *house) {
    return house->unk_0_0;
}

// Returns a pointer to the fridge if it has been obtained
Fridge * sub_800BF1C(FarmHouse *house) {
    return !house->unk_1_1 > 0 ? NULL : &house->fridge;
}

// Returns a pointer to the shelf if it has been obtained
Shelf * sub_800BF34(FarmHouse *house) {
    return !house->unk_1_2 ? NULL : &house->shelf;
}

// Returns a pointer to the record player if it has been obtained
RecordPlayer * sub_800BF50(FarmHouse *house) {
    return !house->unk_1_3 ? NULL : &house->player;
}

// Returns the window style
u8 sub_800BF6C(FarmHouse *house) {
    return house->unk_0_2;
}

// Returns the mailbox style
u8 sub_800BF74(FarmHouse *house) {
    return house->unk_0_4;
}

// Returns the doghouse style
u8 sub_800BF7C(FarmHouse *house) {
    return house->unk_0_6;
}

// Returns whether the bathroom has been obtained
u8 sub_800BF84(FarmHouse *house) {
    return house->unk_1_0;
}

// Returns whether the large bed has been obtained
u8 sub_800BF8C(FarmHouse *house) {
    return house->unk_1_4;
}

// Returns whether the carpet has been obtained
u8 sub_800BF94(FarmHouse *house) {
    return house->unk_1_5;
}

// Returns whether the vase has been obtained
u8 sub_800BF9C(FarmHouse *house) {
    return house->unk_1_6;
}

// Returns the item in the vase
u8 sub_800BFA4(FarmHouse *house) {
    return house->unk_1_7;
}

// Returns whether the mirror has been obtained
u8 sub_800BFAC(FarmHouse *house) {
    return house->unk_3_3;
}

// Returns whether the clock has been obtained
u8 sub_800BFB4(FarmHouse *house) {
    return house->unk_3_4;
}

// Returns whether the kitchen has been obtained
u8 sub_800BFBC(FarmHouse *house) {
    return house->unk_3_5;
}

// Returns whether the fireplace is lighted
u8 sub_800BFC4(FarmHouse *house) {
    return house->unk_4_6;
}

// Returns whether the kitchen has been obtained
u8 sub_800BFCC(FarmHouse *house) {
    return house->unk_4_7;
}

// Returns whether the knife has been obtained
u8 sub_800BFD4(FarmHouse *house) {
    return house->unk_5_0;
}

// Returns whether the frying pan has been obtained
u8 sub_800BFDC(FarmHouse *house) {
    return house->unk_5_1;
}

// Returns whether the pot has been obtained
u8 sub_800BFE4(FarmHouse *house) {
    return house->unk_5_2;
}

// Returns whether the mixer has been obtained
u8 sub_800BFEC(FarmHouse *house) {
    return house->unk_5_3;
}

// Returns whether the whisk has been obtained
u8 sub_800BFF4(FarmHouse *house) {
    return house->unk_5_4;
}

// Returns whether the seasoning set has been obtained
u8 sub_800BFFC(FarmHouse *house) {
    return house->unk_5_5;
}

// Returns whether the oven has been obtained
u8 sub_800C004(FarmHouse *house) {
    return house->unk_5_6;
}

// Returns whether the seasoning set has been obtained
u8 sub_800C00C(FarmHouse *house) {
    return house->unk_5_7;
}

// Returns the item in the stocking
u8 sub_800C014(FarmHouse *house) {
    return house->unk_3_6;
}

// Upgrades the house
void sub_800C024(FarmHouse *house) {
    u8 temp = house->unk_0_0;
    if(temp < 2)
        house->unk_0_0 = ++temp;
}

// Duplicate?
// Returns a pointer to the fridge if it has been obtained
Fridge * sub_800C048(FarmHouse *house) {
    return !house->unk_1_1 > 0 ? NULL : &house->fridge;
}

// Duplicate?
// Returns a pointer to the shelf if it has been obtained
Shelf * sub_800C060(FarmHouse *house) {
    return !house->unk_1_2 ? NULL : &house->shelf;
}

// Duplicate?
// Returns a pointer to the record player if it has been obtained
RecordPlayer * sub_800C07C(FarmHouse *house) {
    return !house->unk_1_3 ? NULL : &house->player;
}

// Sets the window style if the house has been upgraded at least once
void sub_800C098(FarmHouse *house, u32 param) {
    if(house->unk_0_0 > 1)
        house->unk_0_2 = param;
}

// Sets the mailbox style if the house has been upgraded at least once
void sub_800C0BC(FarmHouse *house, u32 param) {
    if(house->unk_0_0 > 1)
        house->unk_0_4 = param;
}

// Sets the doghouse style if the house has been upgraded at least once
void sub_800C0E0(FarmHouse *house, u32 param) {
    if(house->unk_0_0 > 1)
        house->unk_0_6 = param;
}

// Sets the bathroom to obtained if the house has been upgraded twice
void sub_800C0FC(FarmHouse *house) {
    if(house->unk_0_0 == 2)
        house->unk_1_0 = TRUE;
}

// Sets the refrigerator to obtained if the house has been upgraded at least once
void sub_800C118(FarmHouse *house) {
    if(house->unk_0_0 != 0)
        house->unk_1_1 = TRUE;
}

// Sets the shelf to obtained if the house has been upgraded at least once
void sub_800C134(FarmHouse *house) {
    if(house->unk_0_0 != 0)
        house->unk_1_2 = TRUE;
}

// Sets the record player to obtained
void sub_800C150(FarmHouse *house) {
    house->unk_1_3 = TRUE;
}

// Sets the large bed to obtained if the house has been upgraded more than once
void sub_800C15C(FarmHouse *house) {
    if(house->unk_0_0 > 1)
        house->unk_1_4 = TRUE;
}

// Sets the carpet to obtained if the house has been upgraded at least once
void sub_800C178(FarmHouse *house) {
    if(house->unk_0_0 != 0)
        house->unk_1_5 = TRUE;
}

// Sets the vase to obtained
void sub_800C194(FarmHouse *house) {
    house->unk_1_6 = TRUE;
}

// Sets the item in the vase
void sub_800C1A0(FarmHouse *house, u32 param) {
    house->unk_1_7 = param;
    switch(house->unk_1_7){
        default:
            house->unk_2_7 = 0;
            break;

        case ARTICLE_FLOWER_MOON_DROP:
            house->unk_2_7 = 7;
            break;

        case ARTICLE_FLOWER_MAGIC_BLUE:
            house->unk_2_7 = 10;
            break;

        case ARTICLE_FLOWER_PINK_CAT:
        case ARTICLE_FLOWER_MAGIC_RED:
        case ARTICLE_FLOWER_TOY:
            house->unk_2_7 = 5;
            break;
    }
}

// Sets the mirror to obtained
void sub_800C22C(FarmHouse *house) {
    house->unk_3_3 = TRUE;
}

// Sets the clock to obtained
void sub_800C238(FarmHouse *house) {
    house->unk_3_4 = TRUE;
}

// Sets the stocking to obtained
void sub_800C244(FarmHouse *house) {
    house->unk_3_5 = TRUE;
}

// Clears the stocking from obtained
void sub_800C250(FarmHouse *house) {
    house->unk_3_5 = FALSE;
}

// Lights the fireplace
void sub_800C25C(FarmHouse *house) {
    if(house->unk_0_0 > 1 && !house->unk_4_6)
        house->unk_4_6 = TRUE;
}

// Sets the kitchen to obtained if the house has been upgraded and the refrigerator obtained
void sub_800C27C(FarmHouse *house) {
    if(house->unk_0_0 != 0 && sub_800C048(house) != NULL)
        house->unk_4_7 = TRUE;
}

// Sets the knife to obtained if the kitchen has been obtained
void sub_800C2A4(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_0 = TRUE;
}

// Sets the frying pan to obtained if the kitchen has been obtained
void sub_800C2BC(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_1 = TRUE;
}

// Sets the pot to obtained if the kitchen has been obtained
void sub_800C2D4(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_2 = TRUE;
}

// Sets the mixer to obtained if the kitchen has been obtained
void sub_800C2EC(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_3 = TRUE;
}

// Sets the whisk to obtained if the kitchen has been obtained
void sub_800C304(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_4 = TRUE;
}

// Sets the rolling pin to obtained if the kitchen has been obtained
void sub_800C31C(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_5 = TRUE;
}

// Sets the oven to obtained if the kitchen has been obtained
void sub_800C334(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_6 = TRUE;
}

// Sets the seasoning set to obtained if the kitchen has been obtained
void sub_800C34C(FarmHouse *house) {
    if(house->unk_4_7)
        house->unk_5_7 = TRUE;
}

// Sets the item in the stocking
void sub_800C364(FarmHouse *house, u32 param) {
    house->unk_3_6 = param;
}

// Random
extern s32 sub_80D11E4();

// Clears the fireplace and item in the vase
void sub_800C390(FarmHouse *house, u32 param) {
    house->unk_4_6 = FALSE;

    if(!house->unk_1_6 || house->unk_1_7 == ARTICLE_NONE)
        return;

    if(house->unk_2_7 > 0)
        house->unk_2_7--;

    switch(house->unk_1_7){
        case ARTICLE_FLOWER_MOON_DROP:
        case ARTICLE_FLOWER_TOY:
            if(param != 0)
                house->unk_1_7 = ARTICLE_NONE;
            break;

        case ARTICLE_FLOWER_PINK_CAT:
            if(param != 1)
                house->unk_1_7 = ARTICLE_NONE;
            break;

        case ARTICLE_FLOWER_MAGIC_BLUE:
        case ARTICLE_FLOWER_MAGIC_RED:
            if(param != 2)
                house->unk_1_7 = ARTICLE_NONE;
            break;
    }
    
    if(house->unk_2_7 == 0 && ((sub_80D11E4() & 0xFF) <= 100) )
        house->unk_1_7 = ARTICLE_NONE;
}