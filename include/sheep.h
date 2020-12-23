#include "barn_animal.h"

struct Sheep{
    struct BarnAnimal barnAnimal;
    u8 daysUntilProduct:3; //0x34
};


//Returns a sheep's stage
u32 sub_809BEDC(struct Sheep *sheep);
//Returns whether a sheep is sheared
u8 sub_809BF00(struct Sheep *sheep);