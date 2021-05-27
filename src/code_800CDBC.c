#include "barn_animal.h"

typedef struct BarnSlot {
    u32 occupied:1;
    u32 type:1;     // 0 = Sheep, 1 = Cow
    union {
        Cow cow;
        Sheep sheep;
    } animal;
} BarnSlot;

extern u8 sub_800DA08();
extern Cow * sub_800DA2C();
extern Sheep * sub_800DA48();
extern void * sub_800DA14();

typedef struct UnkStruct_8 {
    u32 _0;
    u32 _4;
} UnkStruct_8;

typedef struct Barn {
    u32 unk_0_0:1;
    u32 unk_0_1:10; // Bushels
    u32 unk_1_3:1;
    u32 unk_1_4:1;
    u32 unk_1_5:16;
    u32 unk_3_5:2;
    u32 unk_3_7:1;
    u32 unk_4_0:4;
    u32 padding[9];
    BarnSlot slots[16];
} Barn;

// Initializes the barn
NAKED
Barn * sub_800CDBC(Barn *barn) {
#ifndef NONMATCHING
    asm_unified("\n\
        push {r4, r5, r6, r7, lr}\n\
        sub sp, #4\n\
        adds r5, r0, #0\n\
        ldrb r1, [r5]\n\
        movs r0, #2\n\
        rsbs r0, r0, #0\n\
        ands r0, r1\n\
        strb r0, [r5]\n\
        ldrh r1, [r5]\n\
        ldr r0, _0800CE48 @ =0xFFFFF801\n\
        ands r0, r1\n\
        strh r0, [r5]\n\
        ldrb r1, [r5, #1]\n\
        movs r0, #9\n\
        rsbs r0, r0, #0\n\
        ands r0, r1\n\
        movs r1, #0x11\n\
        rsbs r1, r1, #0\n\
        ands r0, r1\n\
        strb r0, [r5, #1]\n\
        ldr r0, [r5]\n\
        ldr r1, _0800CE4C @ =0xE0001FFF\n\
        ands r0, r1\n\
        str r0, [r5]\n\
        ldrb r1, [r5, #3]\n\
        movs r0, #0x61\n\
        rsbs r0, r0, #0\n\
        ands r0, r1\n\
        movs r1, #0x7f\n\
        ands r0, r1\n\
        strb r0, [r5, #3]\n\
        ldrh r1, [r5, #4]\n\
        ldr r0, _0800CE50 @ =0xFFFFC00F\n\
        ands r0, r1\n\
        strh r0, [r5, #4]\n\
        ldr r0, [r5, #4]\n\
        ldr r1, _0800CE54 @ =0xFF003FFF\n\
        ands r0, r1\n\
        str r0, [r5, #4]\n\
        movs r0, #0\n\
        strb r0, [r5, #0xc]\n\
        strb r0, [r5, #0x1c]\n\
        adds r4, r5, #0\n\
        adds r4, #0x2c\n\
        movs r6, #0xf\n\
        movs r7, #1\n\
        rsbs r7, r7, #0\n\
    _0800CE1A:\n\
        adds r0, r4, #0\n\
        bl sub_800D9FC\n\
        \n\
        adds r4, #0x3c\n\
        subs r6, #1\n\
        cmp r6, r7\n\
        bne _0800CE1A\n\
        movs r0, #1\n\
        rsbs r0, r0, #0\n\
        str r0, [sp]\n\
        adds r1, r5, #7\n\
        movs r2, #2\n\
    _0800CE32:\n\
        strb r0, [r1]\n\
        \n\
        subs r2, #1\n\
        adds r1, #1\n\
        cmp r2, #0\n\
        bgt _0800CE32\n\
        \n\
        adds r0, r5, #0\n\
        add sp, #4\n\
        pop {r4, r5, r6, r7}\n\
        pop {r1}\n\
        bx r1\n\
        .align 2, 0\n\
    _0800CE48: .4byte 0xFFFFF801\n\
    _0800CE4C: .4byte 0xE0001FFF\n\
    _0800CE50: .4byte 0xFFFFC00F\n\
    _0800CE54: .4byte 0xFF003FFF\n\
    ");
#endif
}

void sub_800CE58(u16 *ptr) {
    u32 temp2 = 184;
    u32 temp = 272;
    ptr[0] = temp2;
    ptr[1] = temp;
}

u8 sub_800CE64(Barn *barn) {
    return barn->unk_0_0;
}

// Returns the amount of bushels
u32 sub_800CE6C(Barn *barn) {
    return barn->unk_0_1;
}

// Returns the size of the barn 
u32 sub_800CE74(Barn *barn) {
    struct UnkStruct_8 _struct;
    u32 *ptr, *ptr2;

    _struct._0 = 16;
    _struct._4 = barn->unk_0_0 * 8 + 8;
    ptr2 = &_struct._4;
    ptr = &_struct._0;
    
    if(_struct._0 > _struct._4)
        ptr = ptr2;

    return *ptr;
}

u32 sub_800CE9C(Barn *barn) {
    return barn->unk_0_0 + 1;
}

u32 sub_800CEA8(Barn *barn, u32 param) {
    if(param < sub_800CE74(barn)){
        u32 temp = barn->unk_1_5 & (1 << param);
        return ((-temp|temp) >> 31);
    }
    
    return 0;
}

u32 sub_800CED4(Barn *barn, u32 param) {
    if(param < sub_800CE9C(barn)){
        u32 temp = barn->unk_3_5 & (1 << param);
        return ((-temp|temp) >> 31);
    }
    
    return 0;
}

u32 sub_800CF00(Barn *barn) {
    return barn->unk_1_3;
}

u32 sub_800CF08(Barn *barn) {
    return barn->unk_1_4;
}

// Returns a cow at index
Cow * sub_800CF10(Barn *barn, u32 idx) {
    if(idx < sub_800CE74(barn))
        return sub_800DA2C(&barn->slots[idx]);
    else
        return NULL;
}

// Returns a sheep at index
Sheep * sub_800CF38(Barn *barn, u32 idx) {
    if(idx < sub_800CE74(barn))
        return sub_800DA48(&barn->slots[idx]);
    else
        return NULL;
}

// Returns an animal at index
void * sub_800CF60(Barn *barn, u32 idx) {
    if(idx < sub_800CE74(barn))
        return sub_800DA14(&barn->slots[idx]);
    else
        return NULL;
}

// Returns the next free index
u32 sub_800CF88(Barn *barn, u32 idx) {
    u32 temp = sub_800CE74(barn);

    while(idx < temp) {
        if(sub_800DA08(&barn->slots[idx]))
            return idx;

        idx++;
    }
    
    return -1;
}

// Returns the number of cows
u32 sub_800CFC4(Barn *barn) {
    u32 temp = sub_800CE74(barn);
    u32 val = 0;
    u32 idx = 0;

    while(idx < temp) {
        if(sub_800DA2C(&barn->slots[idx]) != NULL)
            val++;
        idx++;
    }
    
    return val;
}

// Returns the number of sheep
u32 sub_800CFF4(Barn *barn) {
    u32 temp = sub_800CE74(barn);
    u32 val = 0;
    u32 idx = 0;

    while(idx < temp) {
        if(sub_800DA48(&barn->slots[idx]) != NULL)
            val++;
        idx++;
    }
    
    return val;
}

// Returns the number of cows + sheep
u32 sub_800D024(Barn *barn) {
    u32 temp = sub_800CE74(barn);
    u32 val = 0;
    u32 idx = 0;

    while(idx < temp) {
        if(!sub_800DA08(&barn->slots[idx]))
            val++;
        idx++;
    }
    
    return val;
}

u32 sub_800D058(Barn *barn) {
    if(barn->unk_3_7)
        return barn->unk_4_0;
    else
        return -1;
}
