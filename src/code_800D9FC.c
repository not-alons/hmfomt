#include "barn_animal.h"

typedef struct BarnSlot {
    u32 occupied:1;
    u32 type:1;     // 0 = Sheep, 1 = Cow
    union {
        Cow cow;
        Sheep sheep;
    } animal;
} BarnSlot;

// Copies one sheep's data to another
extern void sub_80D7B50();
// Copies one cow's data to another
extern void sub_80D7BC4();

// Initializes a slot
BarnSlot * sub_800D9FC(BarnSlot *slot) {
    slot->occupied = 0;
    return slot;
}

// Returns whether the slot is occupied
u32 sub_800DA08(BarnSlot *slot) {
    return slot->occupied ^ 1;
}

// Returns the slot's animal
void * sub_800DA14(BarnSlot *slot) {
    return slot->occupied ? &slot->animal : NULL;
}

// Returns the slot's cow
NAKED
Cow * sub_800DA2C(BarnSlot *slot) {
#ifndef NONMATCHING
    asm_unified("\n\
        push {lr}\n\
        adds r2, r0, #0\n\
        ldrb r1, [r2]\n\
        lsls r0, r1, #0x1f\n\
        movs r3, #0\n\
        cmp r0, #0\n\
        beq _0800DA42\n\
        lsls r0, r1, #0x1e\n\
        cmp r0, #0\n\
        bge _0800DA42\n\
        adds r3, r2, #4\n\
    _0800DA42:\n\
        adds r0, r3, #0\n\
        pop {r1}\n\
        bx r1\n\
    ");
#else
    Cow *ptr = NULL;
    if(slot->occupied) {
        if(slot->type == 1)
            ptr = &slot->animal.cow;
    }
    return ptr;
#endif
}

// Returns the slot's sheep
NAKED
Sheep * sub_800DA48(BarnSlot *slot) {
#ifndef NONMATCHING
    asm_unified("\n\
        push {lr}\n\
        adds r2, r0, #0\n\
        ldrb r1, [r2]\n\
        lsls r0, r1, #0x1f\n\
        movs r3, #0\n\
        cmp r0, #0\n\
        beq _0800DA5E\n\
        lsls r0, r1, #0x1e\n\
        cmp r0, #0\n\
        blt _0800DA5E\n\
        adds r3, r2, #4\n\
    _0800DA5E:\n\
        adds r0, r3, #0\n\
        pop {r1}\n\
        bx r1\n\
    ");
#else
    Sheep *ptr = NULL;
    if(slot->occupied) {
        if(slot->type == 0)
            ptr = &slot->animal.sheep;
    }
    return ptr;
#endif
}

// Duplicate?
// Returns the slot's animal
void * sub_800DA64(BarnSlot *slot) {
    return slot->occupied ? &slot->animal : NULL;
}

// Duplicate?
// Returns the slot's cow
NAKED
Cow * sub_800DA7C(BarnSlot *slot) {
#ifndef NONMATCHING
    asm_unified("\n\
        push {lr}\n\
        adds r2, r0, #0\n\
        ldrb r1, [r2]\n\
        lsls r0, r1, #0x1f\n\
        movs r3, #0\n\
        cmp r0, #0\n\
        beq _0800DA92\n\
        lsls r0, r1, #0x1e\n\
        cmp r0, #0\n\
        bge _0800DA92\n\
        adds r3, r2, #4\n\
    _0800DA92:\n\
        adds r0, r3, #0\n\
        pop {r1}\n\
	    bx r1\n\
    ");
#else
    Cow *ptr = NULL;
    if(slot->occupied) {
        if(slot->type == 1)
            ptr = &slot->animal.cow;
    }
    return ptr;
#endif
}

// Duplicate?
// Returns the slot's sheep
NAKED
Sheep * sub_800DA98(BarnSlot *slot) {
#ifndef NONMATCHING
    asm_unified("\n\
        push {lr}\n\
        adds r2, r0, #0\n\
        ldrb r1, [r2]\n\
        lsls r0, r1, #0x1f\n\
        movs r3, #0\n\
        cmp r0, #0\n\
        beq _0800DAAE\n\
        lsls r0, r1, #0x1e\n\
        cmp r0, #0\n\
        blt _0800DAAE\n\
        adds r3, r2, #4\n\
    _0800DAAE:\n\
        adds r0, r3, #0\n\
        pop {r1}\n\
        bx r1\n\
    ");
#else
    Sheep *ptr = NULL;
    if(slot->occupied) {
        if(slot->type == 0)
            ptr = &slot->animal.sheep;
    }
    return ptr;
#endif
}

// Copies a cow's data into a slot
u8 sub_800DAB4(BarnSlot *slot, Cow *cow) {
    if(!slot->occupied) {
        if(&slot->animal != NULL)
            sub_80D7BC4(&slot->animal, cow);

        slot->type = 1; // Cow
        slot->occupied = TRUE;
        return TRUE;
    }

    return FALSE;
}

// Copies a sheep's data into a slot
NAKED
u8 sub_800DAE4(BarnSlot *slot, Sheep *sheep) {
#ifndef NONMATCHING
    asm_unified("\n\
	    push {r4, lr}\n\
        adds r4, r0, #0\n\
        ldrb r0, [r4]\n\
        lsls r0, r0, #0x1f\n\
        cmp r0, #0\n\
        bne _0800DB0A\n\
        adds r0, r4, #4\n\
        cmp r0, #0\n\
        beq _0800DAFA\n\
        bl sub_80D7B50\n\
    _0800DAFA:\n\
        ldrb r0, [r4]\n\
        movs r1, #3\n\
        rsbs r1, r1, #0\n\
        ands r1, r0\n\
        movs r0, #1\n\
        orrs r1, r0\n\
        strb r1, [r4]\n\
        b _0800DB0C\n\
    _0800DB0A:\n\
        movs r0, #0\n\
    _0800DB0C:\n\
        pop {r4}\n\
        pop {r1}\n\
        bx r1\n\
    ");
#else
    if(!slot->occupied) {
        if(&slot->animal != NULL)
            sub_80D7B50(&slot->animal, sheep);

        slot->type = 0; // Sheep
        slot->occupied = TRUE;
        return TRUE;
    }
    
    return FALSE;
#endif
}

// Clears the occupied flag
void sub_800DB14(BarnSlot *slot) {
    if(slot->occupied)
        slot->occupied = FALSE;
}
