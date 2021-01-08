#include "dog.h"

NAKED
//Initializes a Dog struct
void sub_809B9D4(struct Dog *dog, u8 *name){
    asm_unified("\n\
        push {r4, r5, r6, lr}\n\
        mov r6, sb\n\
        mov r5, r8\n\
        push {r5, r6}\n\
        sub sp, #0x10\n\
        adds r6, r0, #0\n\
        mov sb, r1\n\
        add r1, sp, #8\n\
        movs r3, #2\n\
        ldrh r2, [r1]\n\
        ldr r4, _0809BA84 @ =0xFFFFFC00\n\
        adds r0, r4, #0\n\
        ands r0, r2\n\
        orrs r0, r3\n\
        strh r0, [r1]\n\
        movs r5, #0xf8\n\
        ldrb r3, [r1, #1]\n\
        movs r2, #3\n\
        adds r0, r2, #0\n\
        ands r0, r3\n\
        orrs r0, r5\n\
        strb r0, [r1, #1]\n\
        movs r5, #5\n\
        ldrh r3, [r1, #2]\n\
        adds r0, r4, #0\n\
        ands r0, r3\n\
        orrs r0, r5\n\
        strh r0, [r1, #2]\n\
        ldrb r0, [r1, #3]\n\
        ands r2, r0\n\
        movs r0, #0x48\n\
        orrs r2, r0\n\
        strb r2, [r1, #3]\n\
        movs r3, #1\n\
        ldrh r2, [r1, #4]\n\
        adds r0, r4, #0\n\
        ands r0, r2\n\
        orrs r0, r3\n\
        strh r0, [r1, #4]\n\
        mov r5, sp\n\
        movs r0, #0\n\
        mov r8, r0\n\
        mov r0, sp\n\
        movs r2, #6\n\
        bl sub_80D3994\n\
        mov r1, r8\n\
        strb r1, [r5, #6]\n\
        adds r0, r6, #0\n\
        mov r1, sb\n\
        mov r2, sp\n\
        movs r3, #1\n\
        bl sub_809B32C\n\
        mov r0, r8\n\
        str r0, [r6, #0x20]\n\
        ldrh r0, [r6, #0x2c]\n\
        ands r4, r0\n\
        strh r4, [r6, #0x2c]\n\
        adds r2, r6, #0\n\
        adds r2, #0x2d\n\
        ldrb r1, [r2]\n\
        movs r0, #0x1d\n\
        rsbs r0, r0, #0\n\
        ands r0, r1\n\
        strb r0, [r2]\n\
        ldr r0, [r6, #0x2c]\n\
        ldr r1, _0809BA88 @ =0xFFE01FFF\n\
        ands r0, r1\n\
        movs r1, #0xa0\n\
        lsls r1, r1, #9\n\
        orrs r0, r1\n\
        str r0, [r6, #0x2c]\n\
        movs r0, #0\n\
        mov r1, r8\n\
        strh r1, [r6, #0x24]\n\
        adds r1, r6, #0\n\
        adds r1, #0x26\n\
        strb r0, [r1]\n\
        adds r0, r6, #0\n\
        add sp, #0x10\n\
        pop {r3, r4}\n\
        mov r8, r3\n\
        mov sb, r4\n\
        pop {r4, r5, r6}\n\
        pop {r1}\n\
        bx r1\n\
        .align 2, 0\n\
    _0809BA84: .4byte 0xFFFFFC00\n\
    _0809BA88: .4byte 0xFFE01FFF\n\
    _0809BA8C:\n\
        .byte 0x70, 0xB5, 0x46, 0x46\n\
        .byte 0x40, 0xB4, 0x84, 0xB0, 0x05, 0x1C, 0x02, 0xA9, 0x02, 0x23, 0x0A, 0x88, 0x23, 0x4C, 0x20, 0x1C\n\
        .byte 0x10, 0x40, 0x18, 0x43, 0x08, 0x80, 0xF8, 0x26, 0x4B, 0x78, 0x03, 0x22, 0x10, 0x1C, 0x18, 0x40\n\
        .byte 0x30, 0x43, 0x48, 0x70, 0x05, 0x26, 0x4B, 0x88, 0x20, 0x1C, 0x18, 0x40, 0x30, 0x43, 0x48, 0x80\n\
        .byte 0xC8, 0x78, 0x02, 0x40, 0x48, 0x20, 0x02, 0x43, 0xCA, 0x70, 0x01, 0x23, 0x8A, 0x88, 0x20, 0x1C\n\
        .byte 0x10, 0x40, 0x18, 0x43, 0x88, 0x80, 0x6E, 0x46, 0x00, 0x20, 0x80, 0x46, 0x68, 0x46, 0x06, 0x22\n\
        .byte 0x37, 0xF0, 0x58, 0xFF, 0x41, 0x46, 0xB1, 0x71, 0x28, 0x1C, 0x69, 0x46, 0x01, 0x22, 0xFF, 0xF7\n\
        .byte 0x2F, 0xFC, 0x40, 0x46, 0x28, 0x62, 0xA8, 0x8D, 0x04, 0x40, 0xAC, 0x85, 0x2A, 0x1C, 0x2D, 0x32\n\
        .byte 0x11, 0x78, 0x1D, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x70, 0xE8, 0x6A, 0x08, 0x49, 0x08, 0x40\n\
        .byte 0xE8, 0x62, 0x00, 0x20, 0x41, 0x46, 0xA9, 0x84, 0x29, 0x1C, 0x26, 0x31, 0x08, 0x70, 0x28, 0x1C\n\
        .byte 0x04, 0xB0, 0x08, 0xBC, 0x98, 0x46, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0xFC, 0xFF, 0xFF\n\
        .byte 0xFF, 0x1F, 0xE0, 0xFF\n\
    ");
}

//Returns whether the dog is an adult or not
bool8 sub_809BB34(struct Dog *dog){
    return 59 < sub_809B220((struct Animal *)dog);
}

void sub_809BB48(struct Dog *dog, u32 *param){
    *(u32 *)&dog->unk_0x24 = *param;
    dog->unk_0x20 = 0;
}

void sub_809BB54(struct Dog *dog, u32 *param){
    u32 temp = param[1];

    *(u32 *)&dog->unk_0x24 = *param;
    dog->unk_0x28 = temp;
    dog->unk_0x20 = 1;
}

void sub_809BB64(struct Dog *dog, u32 *param){
    *(u32 *)&dog->unk_0x24 = *param;
    dog->unk_0x20 = 2;
}

void sub_809BB70(struct Dog *dog, u32 *param){
    u32 temp = param[1];

    *(u32 *)&dog->unk_0x24 = *param;
    dog->unk_0x28 = temp;
    dog->unk_0x20 = 3;
}

void sub_809BB80(struct Dog *dog, u32 *param){
    *(u32 *)&dog->unk_0x24 = *param;
    dog->unk_0x20 = 4;
}

void sub_809BB8C(struct Dog *dog, u32 *param){
    u32 temp = param[1];

    *(u32 *)&dog->unk_0x24 = *param;
    dog->unk_0x28 = temp;
    dog->unk_0x20 = 5;
}

void sub_809BB9C(struct Dog *dog, u32 *param){
    *(u32 *)&dog->unk_0x24 = *param;
    dog->unk_0x20 = 6;
}

//Checks if you talked to or played catch/frisbee your dog
void sub_809BBA8(struct Dog *dog){
    sub_809B3C8(&dog->pet, (((u8 *)dog)[0x2D] & 0x1C) != 0);
    dog->unk_0x2D_2 = 0;
}

//Initializes a dog struct with a name
struct Dog * _0809BBD0(struct Dog *dog, u8 *name, u32 *param, u32 age){
    sub_809B32C(&dog->pet, name, param, age);
    dog->unk_0x20 = 0;
    dog->unk_0x24 = 0;
    dog->unk_0x26 = 0;
    return dog;
}
