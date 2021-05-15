#include "livestock.h"

typedef struct Chicken {
    //0-35 0x00-0x23
    struct Livestock lstock;
    u32 unk_0x24;
    u16 unk_0x28;
    u8  unk_0x2A;
} Chicken;