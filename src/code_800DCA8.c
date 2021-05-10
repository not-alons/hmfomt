#include "global.h"

typedef struct FoodSlot {
    u8 food;
    s8 unk_0x1;
    s8 unk_0x2;
    u8 quantity;
} FoodSlot;

typedef struct FoodData {
    u8* name;
    u8 unk_0x4:1;
    s8 unk_0x5;
    s8 unk_0x6;
    u16 unk_0x8;
    u8* desc;
} FoodData;

extern FoodData gUnk_80EDCD8[];
extern u8 gUnk_80E963C[];
extern u8 gUnk_80E962C[];

// Initializes a food slot
FoodSlot * sub_800DCA8(FoodSlot *slot, u8 food) {
    slot->food = food;
    slot->unk_0x1 = 0;
    slot->unk_0x2 = 0;

    return slot;
}

// Returns a slot's food
u32 sub_800DCB4(FoodSlot *slot) {
    return slot->food;
}

// Returns a pointer to a slot's tool name
u8 * sub_800DCB8(FoodSlot *slot) {
    u8 food = slot->food;
    u8 bool = food < 0xAB;

    if(bool)
        return gUnk_80EDCD8[slot->food].name;
    else
        return gUnk_80E963C;
}

// Returns a slot's unknown short
u16 sub_800DCE0(FoodSlot *slot) {
    u8 food = slot->food;
    u8 bool = food < 0xAB;

    if(bool)
        return gUnk_80EDCD8[slot->food].unk_0x8;
    else
        return 0x1AC;
}


// Returns a slot's unknown s8 + some modifier
s32 sub_800DD08(FoodSlot *slot) {
    u8 food = slot->food;
    u8 bool = food < 0xAB;

    if(bool)
        return gUnk_80EDCD8[slot->food].unk_0x5 + slot->unk_0x1;
    else
        return -100;
}

// Returns a slot's second unknown s8 + some modifier
s32 sub_800DD3C(FoodSlot *slot) {
    u8 food = slot->food;
    u8 bool = food < 0xAB;

    if(bool)
        return gUnk_80EDCD8[slot->food].unk_0x6 + slot->unk_0x2;
    else
        return 100;
}

// Returns a slot's unknown s8
NAKED
s32 sub_800DD6C(FoodSlot *slot) {
    asm_unified("\n\
        push {lr}\n\
        adds r2, r0, #0\n\
        ldrb r0, [r2]\n\
        movs r1, #0\n\
        cmp r0, #0xaa\n\
        bhi _0800DD7A\n\
        movs r1, #1\n\
    _0800DD7A:\n\
        cmp r1, #0\n\
        bne _0800DD84\n\
        movs r0, #0x64\n\
        rsbs r0, r0, #0\n\
        b _0800DD88\n\
    _0800DD84:\n\
        movs r0, #1\n\
        ldrsb r0, [r2, r0]\n\
    _0800DD88:\n\
        pop {r1}\n\
        bx r1\n\
    ");
}

// Returns a slot's second unknown s8
NAKED
s32 sub_800DD8C(FoodSlot *slot) {
    asm_unified("\n\
        push {lr}\n\
        adds r2, r0, #0\n\
        ldrb r0, [r2]\n\
        movs r1, #0\n\
        cmp r0, #0xaa\n\
        bhi _0800DD9A\n\
        movs r1, #1\n\
    _0800DD9A:\n\
        cmp r1, #0\n\
        bne _0800DDA2\n\
        movs r0, #0x64\n\
        b _0800DDA6\n\
    _0800DDA2:\n\
        movs r0, #2\n\
        ldrsb r0, [r2, r0]\n\
    _0800DDA6:\n\
        pop {r1}\n\
        bx r1\n\
    ");
}

// Returns a slot's unknown flag
u8 sub_800DDAC(FoodSlot *slot) {
    u8 food = slot->food;
    u8 bool = food < 0xAB;

    if(bool)
        return gUnk_80EDCD8[slot->food].unk_0x4;
    else
        return 0;
}

// Returns a pointer to a slot's food description
u8 * sub_800DDD4(FoodSlot *slot) {
    u8 food = slot->food;
    u8 bool = food < 0xAB;

    if(bool){
        if(gUnk_80EDCD8[slot->food].desc != NULL)
            return gUnk_80EDCD8[slot->food].desc;
        else
            return gUnk_80E962C;
    }
    
#ifndef NONMATCHING
    return (u8 *)0x080E962C;
#else
    return gUnk_80E962C;
#endif
}

// Adds to both slot's unknown s8
void sub_800DE0C(FoodSlot *slot, s8 param1, s8 param2) {
    s32 total;
    u8 food = slot->food;
    u8 bool = food < 0xAB;

    if(bool){
        total = slot->unk_0x1 + param1;

        if(total < -128)
            total = -128;
        else if(total > 127)
            total = 127;
        
        slot->unk_0x1 = total;

        total = slot->unk_0x2 + param2;
        
        if(total < -128)
            total = -128;
        else if(total > 127)
            total = 127;
        
        slot->unk_0x2 = total;
    }
}

// Initializes a food slot
FoodSlot * sub_800DE68(FoodSlot *slot) {
    sub_800DCA8(slot, 0xAB);
    slot->quantity = 0;
    
    return slot;
}

struct UnkStruct_C {
    u32 _0;
    u32 _4;
    u32 _8;
};

// Copies bytes from one place to another
extern void sub_80D3994(void *dest, void *src, u32 num);

// No idea
FoodSlot * sub_800DE80(FoodSlot *slot1, FoodSlot *slot2, u32 param) {
    struct UnkStruct_C _struct;
    u32 val;
    u32 temp;

    _struct._0 = (u32)slot2;
    _struct._8 = param;
    sub_80D3994(slot1, &_struct, 3);

    temp = _struct._8;
    if(temp){
        u32 *ptr, *ptr2;
        u32 nn = 99;
        _struct._4 = nn;
        
        ptr2 = &_struct._8;
        ptr = &_struct._4;

        if (nn > temp)
            ptr = ptr2;
        val = *(u8 *)ptr;
    }else{
        val = 1;
    }

    slot1->quantity = val;
    return slot1;
}

// Initializes a food slot
FoodSlot * sub_800DEB8(FoodSlot *slot1, FoodSlot *slot2) {
    if(slot2->quantity > 0)
        sub_80D3994(slot1, slot2, 3);
    else
        sub_800DCA8(slot1, 0xAB);
    return slot1;
}

// Returns whether a slot is empty or not
u8 sub_800DEDC(FoodSlot *slot) {
    return slot->quantity == 0;
}

// Returns a slot's quantity
u32 sub_800DEF0(FoodSlot *slot) {
    if(slot->quantity > 0)
        return slot->quantity;
    else
        return 0;
}

struct UnkStruct_8 {
    u32 _0;
    u32 _4;
};

// Adds to a slot's quantity
void sub_800DF04(FoodSlot *slot, u32 amount) {
    struct UnkStruct_8 _struct;

    if(slot->quantity != 0){
        u32 *ptr, *ptr2;

        _struct._0 = 99;
        _struct._4 = slot->quantity + amount;
        ptr2 = &_struct._4;
        ptr = &_struct._0;
        
        if(_struct._0 > _struct._4)
            ptr = ptr2;
        slot->quantity = *ptr;
    }
}

// Subtracts from a slot's quantity
void sub_800DF34(FoodSlot *slot, u32 amount) {
    if(slot->quantity != 0){
        if(slot->quantity <= amount)
            slot->quantity = 0;
        else
            slot->quantity -= amount;
    }
}
