#include "global.h"

struct Animal {
    //0-7 0x0-0x7
    u32 unk_0x00;
    u32 unk_0x04;
    //8-23 0x8-0x17
    u8 name[16];
    //24-27 0x18-0x1B 
    u32 age:10;
    u32 festivalWinner:1;
    u32 brushed:1;
    u32 talked:1;
    u32 affection:8;
};


//Initializes an animal struct with a name
struct Animal * sub_809B12C(struct Animal *animal, u8 *name, u32* param, u32 age);
//Initializes an animal struct without a name
struct Animal * sub_809B1A4(struct Animal *animal, u32* param, u32 age);
//Returns whether the animal has been brushed
bool8 sub_809B230(struct Animal *animal);
//Returns whether the animal has been talked to
bool8 sub_809B238(struct Animal *animal);
//Increases an animal's affection
void sub_809B2A8(struct Animal *animal, u32 amount);
//Decreases an animal's affection
void sub_809B2DC(struct Animal *animal, u32 amount);
//Increments an animal's age and clears the brushed and talked flags
void sub_809B2E8(struct Animal *animal);