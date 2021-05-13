#include "inventory.h"

// Initializes the fridge
Fridge * sub_800B660(Fridge *fridge) {
    u32 ctr = 64;
    FoodSlot *ptr = fridge->slots;

    while(--ctr != -1){
        sub_800DE68(ptr);
        ptr++;
    }

    return fridge;
}

// Returns slot at index n
FoodSlot * sub_800B684(Fridge *fridge, u32 idx) {
    return &fridge->slots[idx];
}

// Returns the available quantity of X food in a fridge
u32 sub_800B68C(Fridge *fridge, u32 food) {
    u32 val = 0;
    u8 bool;
    FoodSlot * ptr2 = &fridge->slots[64];
    FoodSlot * ptr = &fridge->slots[0];
    FoodSlot sp;

    while(ptr != ptr2){
        FoodSlot * r7 = &sp;
        if(sub_800DEDC(ptr)){
            val += 99;
        }else{
            sub_800DEB8(&sp, ptr);
            bool = sub_800DCB4(&sp) == food;
            if(bool){
                u32 temp = sub_800DEF0(ptr);
                u32 temp2 = val + 99;
                val = temp2 - temp;
            }
        }
        ptr++;
    }

    return val;
}

// Returns the quantity of X food in a fridge
u32 sub_800B6E8(Fridge *fridge, u32 food) {
    u32 val = 0;
    u8 bool;
    FoodSlot * ptr2 = &fridge->slots[64];
    FoodSlot * ptr = &fridge->slots[0];
    FoodSlot sp;

    while(ptr != ptr2){
        FoodSlot * r7 = &sp;
        if(!sub_800DEDC(ptr)){
            sub_800DEB8(&sp, ptr);
            bool = sub_800DCB4(&sp) == food;

            if(bool)
                val += sub_800DEF0(ptr);
        }
        ptr++;
    }

    return val;
}

// Unused?
// Returns the first empty slot index in a fridge
u32 sub_800B73C(Fridge *fridge, u32 food) {
    u32 idx = 0;
    FoodSlot * ptr2 = &fridge->slots[64];
    FoodSlot * ptr = &fridge->slots[0];

    while(ptr != ptr2){
        if(sub_800DEDC(ptr))
            return idx;
        
        ptr++;
        idx++;
    }

    return -1;
}

// Unused?
NAKED
u32 sub_800B770(Fridge *fridge) {
    asm_unified("\n\
        .byte 0x10, 0xB5, 0x84, 0xB0, 0x3F, 0x24, 0x01, 0x90, 0x80, 0x21, 0x49, 0x00, 0x40, 0x18, 0x03, 0x90\n\
        .byte 0x0B, 0xE0, 0x10, 0x1F, 0x02, 0xF0, 0xAA, 0xFB, 0x00, 0x06, 0x00, 0x28, 0x01, 0xD0, 0x20, 0x1C\n\
        .byte 0x0D, 0xE0, 0x03, 0x98, 0x04, 0x38, 0x03, 0x90, 0x01, 0x3C, 0x03, 0x9A, 0x01, 0x98, 0x00, 0x21\n\
        .byte 0x82, 0x42, 0x00, 0xD1, 0x01, 0x21, 0x00, 0x29, 0xEB, 0xD0, 0x01, 0x20, 0x40, 0x42, 0x04, 0xB0\n\
        .byte 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00\n\
    ");
}

// Returns the first slot index containing X food
u32 sub_800B7B8(Fridge *fridge, u32 food) {
    u32 idx = 0;
    u8 bool;
    FoodSlot * ptr2 = &fridge->slots[64];
    FoodSlot * ptr = &fridge->slots[0];
    FoodSlot sp;

    while(ptr != ptr2){
        FoodSlot * r7 = &sp;
        if(!sub_800DEDC(ptr)){
            sub_800DEB8(&sp, ptr);
            bool = sub_800DCB4(&sp) == food;
            if(bool){
                return idx;
            }
        }
        ptr++;
        idx++;
    }

    return -1;
}

// Returns slot at index n
FoodSlot * sub_800B80C(Fridge *fridge, u32 idx) {
    return &fridge->slots[idx];
}

// Fills as many slots as it can with a certain food
NAKED
u32 sub_800B814(Fridge *fridge, u32 food, u32 amount) {
    asm_unified("\n\
        push {r4, r5, r6, r7, lr}\n\
        mov r7, r8\n\
        push {r7}\n\
        sub sp, #0x14\n\
        adds r7, r1, #0\n\
        str r2, [sp, #8]\n\
        cmp r7, #0xaa\n\
        ble _0800B828\n\
        adds r0, r2, #0\n\
        b _0800B8D8\n\
    _0800B828:\n\
        movs r1, #0x80\n\
        lsls r1, r1, #1\n\
        adds r1, r1, r0\n\
        mov r8, r1\n\
        adds r6, r0, #0\n\
        ldr r0, [sp, #8]\n\
        cmp r0, #0\n\
        beq _0800B8D8\n\
        cmp r6, r8\n\
        beq _0800B8D8\n\
    _0800B83C:\n\
        adds r0, r6, #0\n\
        bl sub_800DEDC\n\
        lsls r0, r0, #0x18\n\
        cmp r0, #0\n\
        beq _0800B88A\n\
        movs r0, #0x63\n\
        str r0, [sp, #0xc]\n\
        add r1, sp, #0xc\n\
        ldr r0, [sp, #8]\n\
        add r5, sp, #8\n\
        cmp r0, #0x63\n\
        bls _0800B858\n\
        adds r5, r1, #0\n\
    _0800B858:\n\
        ldr r5, [r5]\n\
        add r4, sp, #4\n\
        adds r0, r4, #0\n\
        adds r1, r7, #0\n\
        bl sub_800DCA8\n\
        ldrb r1, [r4]\n\
        mov r0, sp\n\
        adds r0, #5\n\
        ldrb r2, [r0]\n\
        lsls r2, r2, #8\n\
        orrs r2, r1\n\
        adds r0, #1\n\
        ldrb r1, [r0]\n\
        lsls r1, r1, #0x10\n\
        orrs r1, r2\n\
        mov r0, sp\n\
        adds r2, r5, #0\n\
        bl sub_800DE80\n\
        ldr r0, [sp]\n\
        str r0, [r6]\n\
        ldr r0, [sp, #8]\n\
        subs r0, r0, r5\n\
        b _0800B8CA\n\
    _0800B88A:\n\
        mov r0, sp\n\
        adds r1, r6, #0\n\
        bl sub_800DEB8\n\
        mov r0, sp\n\
        bl sub_800DCB4\n\
        movs r1, #0\n\
        cmp r0, r7\n\
        bne _0800B8A0\n\
        movs r1, #1\n\
    _0800B8A0:\n\
        cmp r1, #0\n\
        beq _0800B8CC\n\
        adds r0, r6, #0\n\
        bl sub_800DEF0\n\
        movs r1, #0x63\n\
        subs r1, r1, r0\n\
        str r1, [sp, #0x10]\n\
        add r2, sp, #0x10\n\
        ldr r0, [sp, #8]\n\
        add r4, sp, #8\n\
        cmp r0, r1\n\
        bls _0800B8BC\n\
        adds r4, r2, #0\n\
    _0800B8BC:\n\
        ldr r4, [r4]\n\
        adds r0, r6, #0\n\
        adds r1, r4, #0\n\
        bl sub_800DF04\n\
        ldr r0, [sp, #8]\n\
        subs r0, r0, r4\n\
    _0800B8CA:\n\
        str r0, [sp, #8]\n\
    _0800B8CC:\n\
        adds r6, #4\n\
        ldr r0, [sp, #8]\n\
        cmp r0, #0\n\
        beq _0800B8D8\n\
        cmp r6, r8\n\
        bne _0800B83C\n\
    _0800B8D8:\n\
        add sp, #0x14\n\
        pop {r3}\n\
        mov r8, r3\n\
        pop {r4, r5, r6, r7}\n\
        pop {r1}\n\
        bx r1\n\
    ");
}
