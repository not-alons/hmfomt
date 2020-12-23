#include "livestock.h"

//TODO: Document and revise the pointer casts
struct BarnAnimal{
    //00-35 0x00-0x23
    struct Livestock lstock;
    //36-39 0x24-0x27
    u32 pregnant:1;
    u32 daysPregnant:5;
    u32 daysPregnantHealthy:5;
    //40-51 0x28-0x33
    u32 unk_0x28; //40 0x28
    u16 unk_0x2C; //44 0x2C
    u8  unk_0x2E; //46 0x2E
    u8  unk_0x2F; //47 0x2F
    u32 unk_0x30; //48 0x30
};

//Initializes a barn animal struct with a name
struct BarnAnimal * sub_809B828(struct BarnAnimal *barnAnimal, u8 *name, u32 *param, u32 age, u32 daysFed);
//Initializes a barn animal struct
struct BarnAnimal * sub_809B870(struct BarnAnimal *barnAnimal, u32 *param, u32 age, u32 daysFed);
//Returns the pregnant flag
bool8 sub_809B8B0(struct BarnAnimal *barnAnimal);
//Checks if you fed a barn animal
void sub_809B970(struct BarnAnimal *barnAnimal, u8 *param);
