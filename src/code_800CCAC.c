#include "chicken.h"

typedef struct CoopSlot {
    u32 occupied:1;
    Chicken chicken;
} CoopSlot;

extern void sub_80D7C40();

// Returns whether the slot is free
u32 sub_800CCAC(CoopSlot *slot) {
    return slot->occupied ^ 1;
}

// Returns a pointer to the slot's chicken
Chicken * sub_800CCB8(CoopSlot *slot){
    return !slot->occupied ? NULL : &slot->chicken;
}

// Returns a pointer to the slot's chicken
Chicken * sub_800CCD0(CoopSlot *slot) {
    return !slot->occupied ? NULL : &slot->chicken;
}

// Copies a newborn chick's data into a slot
u8 sub_800CCE8(CoopSlot *slot, Chicken *chicken) {
    Chicken *r5 = chicken;

    if(!slot->occupied) {
        Chicken *r4 = &slot->chicken;
        if(r4 != NULL) {
            sub_80D7C40(r4, chicken);
            r4->unk_0x24 = r5->unk_0x24;
            *(u32 *)&r4->unk_0x28 = *(u32 *)&chicken->unk_0x28;
        }
        slot->occupied = TRUE;
        return TRUE;
    }
    
    return FALSE;
}

// Clears the occupied flag
void sub_800CD20(CoopSlot *slot) {
    if(slot->occupied)
        slot->occupied = FALSE;
}


typedef struct Incubator {
    u8  daysLeft:2;
    u32 occupied:1;
} Incubator;

// Returns whether an incubator is occupied
u8 sub_800CD38(Incubator *str) {
    return str->occupied;
}

// Returns the days left for an egg to hatch
u8 sub_800CD40(Incubator *str, u32 param) {
    return str->occupied ? str->daysLeft : 0;
}

// Returns whether an egg should hatch
u8 sub_800CD58(Incubator *str) {
    u8 temp = FALSE;

    if(str->occupied) {
        if(str->daysLeft == 0)
            temp = TRUE;
    }

    return temp;
}

// Sets days left to 3 and the occupied flag
void sub_800CD78(Incubator *str) {
    str->occupied = TRUE;
    str->daysLeft = 3;
}

// Decrements the days left
void sub_800CD88(Incubator *str) {
    if(str->daysLeft > 0)
        str->daysLeft--;
}

// Clears the occupied flag
void sub_800CDB0(Incubator *str) {
    str->occupied = FALSE;
}
