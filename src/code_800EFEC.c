#include "inventory.h"

extern u8 sub_80D3994();

typedef struct RucksackSlot {
    u32 type:1;
    u8 wrapped:1;
    u8 item;
    s8 stamina;
    s8 fatigue;
    u8 unk;
} RucksackSlot;

typedef struct UnkStruct_4 {
    u8 _0;
    u8 _1;
    u8 _2;
    u8 _3;
} UnkStruct_4;

// Initializes a rucksack slot
void sub_800EFEC(RucksackSlot *slot) {
    slot->type = 0;
    slot->wrapped = 0;
    slot->item = FOOD_NONE;
}

// Initializes a rucksack slot from a food slot
RucksackSlot * sub_800F004(RucksackSlot *rSlot, FoodSlot fSlot) {
    rSlot->type = 0;
    rSlot->wrapped = 0;

    rSlot->item = sub_800DCB4(&fSlot);
    rSlot->stamina = sub_800DD6C(&fSlot);
    rSlot->fatigue = sub_800DD8C(&fSlot);

    return rSlot;
}

// Initializes a rucksack slot from an article
RucksackSlot * sub_800F040(RucksackSlot *rSlot, u8 article) {
    ArticleSlot sp;
    sp.article = article;
    
    rSlot->type = 1;
    rSlot->wrapped = 0;

    rSlot->item = sub_800DF54(&sp);

    return rSlot;
}

// Returns whether the slot is empty
u8 sub_800F06C(RucksackSlot *slot) {
    switch(slot->type) {
        default:
            return TRUE;
        case 0:
            return slot->item >= FOOD_NONE;
        case 1:
            return slot->item >= ARTICLE_NONE;
    }
}

// Returns the slot's itemp type
u8 sub_800F09C(RucksackSlot *slot) {
    return slot->type;
}

// Initializes a food slot from a rucksack slot
FoodSlot * sub_800F0A4(FoodSlot *fSlot, RucksackSlot *rSlot) {
    FoodSlot sp;
    
    if(rSlot->type == 0) {
        sub_800DCA8(&sp, rSlot->item);
        sub_800DE0C(&sp, rSlot->stamina, rSlot->fatigue);
        sub_80D3994(fSlot, &sp, 3);
    } else {
        sub_800DCA8(fSlot, FOOD_NONE);
    }

    return fSlot;
}

u8 sub_800F0E8(RucksackSlot *slot) {
    UnkStruct_4 sp;
    u8 *ptr;
    
    if(slot->type == 1) {
        ptr = &sp._0;
        ptr++;
        sub_800DF50((ArticleSlot *)&sp._1, slot->item);
        return *ptr;
    } else {
        sub_800DF50((ArticleSlot *)&sp, ARTICLE_NONE);
        return sp._0;
    }

}

// Returns whether the item is wrapped
u8 sub_800F11C(RucksackSlot *slot) {
    return slot->wrapped;
}

// Returns whether the item can be wrapped
u8 sub_800F124(RucksackSlot *slot) {
    ArticleSlot sp;
    u8 bool = FALSE;
    
    switch(slot->type) {
        case 0:
            bool = TRUE;
            break;
        case 1:
            sub_800DF50(&sp, slot->item);
            bool = sub_800DFB0(&sp);
            break;
    }
    
    slot->wrapped = bool;
    return bool;
}
