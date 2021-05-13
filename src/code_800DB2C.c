#include "inventory.h"

// Sets a slot's tool
void sub_800DB2C(ToolSlot *slot, u8 tool) {
    slot->tool = tool;
}

// Returns a slot's tool
u32 sub_800DB30(ToolSlot *slot) {
    return slot->tool;
}

// Returns a pointer to a slot's tool name
u8 * sub_800DB34(ToolSlot *slot) {
    u8 tool = slot->tool;
    u8 bool = tool < NUM_TOOLS;

    if(bool)
        return gUnk_80EAB0C[slot->tool].name;
    else
        return gUnk_80E9620;
}

// Returns a slot's unknown short
u16 sub_800DB60(ToolSlot *slot) {
    u8 tool = slot->tool;
    u8 bool = tool < NUM_TOOLS;

    if(bool)
        return gUnk_80EAB0C[slot->tool].unk;
    else
        return 457;// 0x1C9
}

// Returns a pointer to a slot's tool description
u8 * sub_800DB8C(ToolSlot *slot) {
    u8 tool = slot->tool;
    u8 bool = tool < NUM_TOOLS;

    if(bool){
        if(gUnk_80EAB0C[slot->tool].desc != NULL)
            return gUnk_80EAB0C[slot->tool].desc;
        else
            return gUnk_80E962C;
    }
    
#ifndef NONMATCHING
    return (u8 *)0x080E962C;
#else
    return gUnk_80E962C;
#endif
}

// Initializes an empty slot
ToolSlot * sub_800DBC8(ToolSlot *slot) {
    sub_800DB2C(slot, TOOL_NONE);
    slot->quantity = 0;
    return slot;
}

struct UnkStruct {
    u32 _0;
    u32 _4;
};

// Initializes a tool slot
ToolSlot * sub_800DBE0(ToolSlot *slot, u8 tool, u32 amount) {
    struct UnkStruct _struct;
    u32 temp;

    _struct._4 = amount;
    slot->tool = tool;
#ifndef NONMATCHING
        asm("ldr r2, [sp, #0x4]"::""(_struct._4));
#endif
    if(_struct._4 != 0){
        u32 *ptr, *ptr2;

        _struct._0 = 99;
        ptr2 = &_struct._4;
        ptr = &_struct._0;
        
        if(_struct._0 > amount)
            ptr = ptr2;
        temp = *(u8*)ptr;
    }else{
        temp = 1;
    }

    slot->quantity = temp;
    return slot;
}

// Returns a slot's tool
u8 sub_800DC10(ToolSlot *slot) {
    ToolSlot sp;

    if(slot->quantity != 0)
        return slot->tool;

    sub_800DB2C(&sp, TOOL_NONE);
    return sp.tool;
}

// Returns whether a slot is empty or not
bool8 sub_800DC34(ToolSlot *slot) {
    return slot->quantity == 0;
}

// Returns a slot's quantity
u32 sub_800DC48(ToolSlot *slot) {
    if(slot->quantity != 0)
        return slot->quantity;
    else
        return 0;
}

// Adds to a slot's quantity
void sub_800DC5C(ToolSlot *slot, u32 amount) {
    struct UnkStruct _struct;

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
void sub_800DC8C(ToolSlot *slot, u32 amount) {
    if(slot->quantity != 0){
        if(slot->quantity <= amount)
            slot->quantity = 0;
        else
            slot->quantity -= amount;
    }
}
