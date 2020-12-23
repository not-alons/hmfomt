#include "barn_animal.h"

struct Cow{
    struct BarnAnimal barnAnimal;
    u32 milked:1; //0x34
};
