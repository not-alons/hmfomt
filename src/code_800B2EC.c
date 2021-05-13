#include "inventory.h"

// Initializes a chest and places the starting tools inside it
NAKED
ToolChest * sub_800B2EC(ToolChest *chest) {
    asm_unified("\n\
        push {r4, r5, r6, r7, lr}\n\
        mov r7, sl\n\
        mov r6, sb\n\
        mov r5, r8\n\
        push {r5, r6, r7}\n\
        sub sp, #0x18\n\
        adds r6, r0, #0\n\
        adds r4, r6, #0\n\
        movs r5, #0x3f\n\
        add r0, sp, #4\n\
        mov r8, r0\n\
        movs r0, #5\n\
        add r0, sp\n\
        mov sb, r0\n\
        movs r0, #6\n\
        add r0, sp\n\
        mov sl, r0\n\
        mov r0, sp\n\
        adds r0, #7\n\
        str r0, [sp, #0xc]\n\
        adds r0, #1\n\
        str r0, [sp, #0x10]\n\
        adds r0, #1\n\
        str r0, [sp, #0x14]\n\
        movs r7, #1\n\
        rsbs r7, r7, #0\n\
    _0800B320:\n\
        adds r0, r4, #0\n\
        bl sub_800DBC8\n\
        adds r4, #2\n\
        subs r5, #1\n\
        cmp r5, r7\n\
        bne _0800B320\n\
        mov r0, r8\n\
        movs r1, #0\n\
        bl sub_800DB2C\n\
        add r0, sp, #4\n\
        ldrb r1, [r0]\n\
        mov r0, sp\n\
        movs r2, #1\n\
        bl sub_800DBE0\n\
        adds r0, r6, #0\n\
        mov r1, sp\n\
        movs r2, #2\n\
        bl sub_80D3994\n\
        adds r4, r6, #2\n\
        mov r0, sb\n\
        movs r1, #0x10\n\
        bl sub_800DB2C\n\
        mov r0, sp\n\
        adds r0, #5\n\
        ldrb r1, [r0]\n\
        mov r0, sp\n\
        movs r2, #1\n\
        bl sub_800DBE0\n\
        adds r0, r4, #0\n\
        mov r1, sp\n\
        movs r2, #2\n\
        bl sub_80D3994\n\
        adds r4, r6, #4\n\
        mov r0, sl\n\
        movs r1, #8\n\
        bl sub_800DB2C\n\
        mov r0, sp\n\
        adds r0, #6\n\
        ldrb r1, [r0]\n\
        mov r0, sp\n\
        movs r2, #1\n\
        bl sub_800DBE0\n\
        adds r0, r4, #0\n\
        mov r1, sp\n\
        movs r2, #2\n\
        bl sub_80D3994\n\
        adds r4, r6, #6\n\
        ldr r0, [sp, #0xc]\n\
        movs r1, #0x18\n\
        bl sub_800DB2C\n\
        mov r0, sp\n\
        adds r0, #7\n\
        ldrb r1, [r0]\n\
        mov r0, sp\n\
        movs r2, #1\n\
        bl sub_800DBE0\n\
        adds r0, r4, #0\n\
        mov r1, sp\n\
        movs r2, #2\n\
        bl sub_80D3994\n\
        adds r4, #2\n\
        ldr r0, [sp, #0x10]\n\
        movs r1, #0x20\n\
        bl sub_800DB2C\n\
        add r0, sp, #8\n\
        ldrb r1, [r0]\n\
        mov r0, sp\n\
        movs r2, #1\n\
        bl sub_800DBE0\n\
        adds r0, r4, #0\n\
        mov r1, sp\n\
        movs r2, #2\n\
        bl sub_80D3994\n\
        adds r4, #2\n\
        ldr r0, [sp, #0x14]\n\
        movs r1, #0x4c\n\
        bl sub_800DB2C\n\
        mov r0, sp\n\
        adds r0, #9\n\
        ldrb r1, [r0]\n\
        mov r0, sp\n\
        movs r2, #1\n\
        bl sub_800DBE0\n\
        adds r0, r4, #0\n\
        mov r1, sp\n\
        movs r2, #2\n\
        bl sub_80D3994\n\
        adds r0, r6, #0\n\
        add sp, #0x18\n\
        pop {r3, r4, r5}\n\
        mov r8, r3\n\
        mov sb, r4\n\
        mov sl, r5\n\
        pop {r4, r5, r6, r7}\n\
        pop {r1}\n\
        bx r1\n\
	    .align 2, 0\n\
    ");
}

// Returns the slot at index N
ToolSlot * sub_800B408(ToolChest *chest, u32 idx) {
    return &chest->slots[idx];
}

// Returns the available quantity of X tool in a chest
u32 sub_800B410(ToolChest *chest, u32 tool) {
    u32 val = 0;
    u8 bool;
    ToolSlot * ptr2 = &chest->slots[64];
    ToolSlot * ptr = &chest->slots[0];
    ToolSlot sp;

    while(ptr != ptr2){
        ToolSlot * r7 = &sp;
        if(sub_800DC34(ptr)){
            val += 99;
        }else{
            r7->tool = sub_800DC10(ptr);
            bool = sub_800DB30(&sp) == tool;
            if(bool){
                u32 temp = sub_800DC48(ptr);
                u32 temp2 = val + 99;
                val = temp2 - temp;
            }
        }
        ptr++;
    }

    return val;
}

// Returns the quantity of X tool in a chest
u32 sub_800B474(ToolChest *chest, u32 tool) {
    u32 val = 0;
    u8 bool;
    ToolSlot * ptr2 = &chest->slots[64];
    ToolSlot * ptr = &chest->slots[0];
    ToolSlot sp;

    while(ptr != ptr2){
        ToolSlot * r7 = &sp;
        if(!sub_800DC34(ptr)){
            r7->tool = sub_800DC10(ptr);
            bool = sub_800DB30(&sp) == tool;

            if(bool)
                val += sub_800DC48(ptr);
        }
        ptr++;
    }

    return val;
}

// Unused?
// Returns the first empty slot index in a chest
u32 sub_800B4D0(ToolChest *chest) {
    u32 idx = 0;
    ToolSlot * ptr2 = &chest->slots[64];
    ToolSlot * ptr = &chest->slots[0];

    while(ptr != ptr2){
        if(sub_800DC34(ptr))
            return idx;
        
        ptr++;
        idx++;
    }

    return -1;
}

// Unused?
NAKED
u32 sub_800B500(ToolChest *chest) {
    asm_unified("\n\
        .byte 0x10, 0xB5, 0x84, 0xB0, 0x3F, 0x24, 0x01, 0x90, 0x80, 0x30, 0x03, 0x90, 0x0B, 0xE0, 0x90, 0x1E\n\
        .byte 0x02, 0xF0, 0x90, 0xFB, 0x00, 0x06, 0x00, 0x28, 0x01, 0xD0, 0x20, 0x1C, 0x0D, 0xE0, 0x03, 0x98\n\
        .byte 0x02, 0x38, 0x03, 0x90, 0x01, 0x3C, 0x03, 0x9A, 0x01, 0x98, 0x00, 0x21, 0x82, 0x42, 0x00, 0xD1\n\
        .byte 0x01, 0x21, 0x00, 0x29, 0xEB, 0xD0, 0x01, 0x20, 0x40, 0x42, 0x04, 0xB0, 0x10, 0xBC, 0x02, 0xBC\n\
        .byte 0x08, 0x47, 0x00, 0x00\n\
    ");
}

// Returns the first slot index containing X tool
u32 sub_800B544(ToolChest *chest, u32 tool) {
    u32 idx = 0;
    u8 bool;
    ToolSlot * ptr2 = &chest->slots[64];
    ToolSlot * ptr = &chest->slots[0];
    ToolSlot sp;

    while(ptr != ptr2){
        ToolSlot * r7 = &sp;
        if(!sub_800DC34(ptr)){
            r7->tool = sub_800DC10(ptr);
            bool = sub_800DB30(&sp) == tool;
            if(bool){
                return idx;
            }
        }
        ptr++;
        idx++;
    }

    return -1;
}

// Duplicate of sub_800B408?
// Returns the slot at index N
ToolSlot * sub_800B5A0(ToolChest *chest, u32 idx) {
    return &chest->slots[idx];
}

// Fills as many slots as it can with a certain tool
NAKED
u32 sub_800B5A8(ToolChest *chest, u32 tool, u32 amount) {
    asm_unified("\n\
        push {r4, r5, r6, r7, lr}\n\
        sub sp, #0x14\n\
        adds r6, r1, #0\n\
        str r2, [sp, #4]\n\
        cmp r6, #0x50\n\
        ble _0800B5B8\n\
        adds r0, r2, #0\n\
        b _0800B658\n\
    _0800B5B8:\n\
        adds r7, r0, #0\n\
        adds r7, #0x80\n\
        adds r5, r0, #0\n\
        ldr r0, [sp, #4]\n\
        cmp r0, #0\n\
        beq _0800B658\n\
        cmp r5, r7\n\
        beq _0800B658\n\
    _0800B5C8:\n\
        adds r0, r5, #0\n\
        bl sub_800DC34\n\
        lsls r0, r0, #0x18\n\
        cmp r0, #0\n\
        beq _0800B606\n\
        movs r0, #0x63\n\
        str r0, [sp, #8]\n\
        add r1, sp, #8\n\
        ldr r0, [sp, #4]\n\
        add r4, sp, #4\n\
        cmp r0, #0x63\n\
        bls _0800B5E4\n\
        adds r4, r1, #0\n\
    _0800B5E4:\n\
        ldr r4, [r4]\n\
        add r0, sp, #0xc\n\
        adds r1, r6, #0\n\
        bl sub_800DB2C\n\
        add r0, sp, #0xc\n\
        ldrb r1, [r0]\n\
        mov r0, sp\n\
        adds r2, r4, #0\n\
        bl sub_800DBE0\n\
        adds r0, r5, #0\n\
        mov r1, sp\n\
        movs r2, #2\n\
        bl sub_80D3994\n\
        b _0800B646\n\
    _0800B606:\n\
        adds r0, r5, #0\n\
        bl sub_800DC10\n\
        mov r1, sp\n\
        adds r1, #0xd\n\
        strb r0, [r1]\n\
        adds r0, r1, #0\n\
        bl sub_800DB30\n\
        movs r1, #0\n\
        cmp r0, r6\n\
        bne _0800B620\n\
        movs r1, #1\n\
    _0800B620:\n\
        cmp r1, #0\n\
        beq _0800B64C\n\
        adds r0, r5, #0\n\
        bl sub_800DC48\n\
        movs r1, #0x63\n\
        subs r1, r1, r0\n\
        str r1, [sp, #0x10]\n\
        add r2, sp, #0x10\n\
        ldr r0, [sp, #4]\n\
        add r4, sp, #4\n\
        cmp r0, r1\n\
        bls _0800B63C\n\
        adds r4, r2, #0\n\
    _0800B63C:\n\
        ldr r4, [r4]\n\
        adds r0, r5, #0\n\
        adds r1, r4, #0\n\
        bl sub_800DC5C\n\
    _0800B646:\n\
        ldr r0, [sp, #4]\n\
        subs r0, r0, r4\n\
        str r0, [sp, #4]\n\
    _0800B64C:\n\
        adds r5, #2\n\
        ldr r0, [sp, #4]\n\
        cmp r0, #0\n\
        beq _0800B658\n\
        cmp r5, r7\n\
        bne _0800B5C8\n\
    _0800B658:\n\
        add sp, #0x14\n\
        pop {r4, r5, r6, r7}\n\
        pop {r1}\n\
        bx r1\n\
    ");
}
