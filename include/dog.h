#include "pet.h"

struct Dog{
    //0-31 0x00-0x1F
    struct Pet pet;
    
    u32 unk_0x20;
    u16 unk_0x24;
    u8  unk_0x26;

    u32 unk_0x28;

    //44-47 0x2C-0x2F
    u32 frisbeeRecord:10;
    u32 unk_0x2D_2:3;
    u32 frisbeeGaugeLimit:8;
};
