#include "animal.h"

struct Pet {
    //0-27 0x0-0x1B
    struct Animal animal;
    //TODO: Rename these two
    //28-31 0x1C-0x1F
    u32 _0x1C:8;
    u32 _0x1D_0:1;
    u32 unk_0x1D_1:1;
};
