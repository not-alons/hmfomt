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

//Initializes a pet struct with a name
struct Pet * sub_809B32C(struct Pet *pet, u8 *name, u32 *param, u32 age);
//Initializes a pet struct without a name
struct Pet * sub_809B350(struct Pet *pet, u32 *param, u32 age);
//Checks if you talked, brushed, or played with/rode your dog/horse
void sub_809B3C8(struct Pet *pet, u8 param);
