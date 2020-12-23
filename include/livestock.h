#include "animal.h"

struct Livestock {
    //0-27
    struct Animal animal;
    //28
    u8 daysFed:5;
    u8 fed:1;
    u8 unhappy:1;
    u8 sick:1;
    //29
    u8 unk_0x1D_0:2;
    u8 daysUnhappy:3;
    u8 daysSick:3;
    //30-33
    u32 currentOutdoorMinutes:9;
    u32 totalOutdoorMinutes:16;
};

//Initializes a livestock struct with a name
struct Livestock * sub_809B454(struct Livestock *lstock, u8 *name, u32 *param, u32 age, u32 daysFed);
//Initializes a livestock struct
struct Livestock * sub_809B4A4(struct Livestock *lstock, u32 *param, u32 age, u32 daysFed);
//Returns the number of days fed
u32 sub_809B4F4(struct Livestock *lstock);
//Returns the unhappy flag
bool8 sub_809B504(struct Livestock *lstock);
//Returns the sick flag
bool8 sub_809B50C(struct Livestock *lstock);
//Returns a livestock's product level
u32 sub_809B538(struct Livestock *lstock);
//Sets the fed flag
void sub_809B65C(struct Livestock *lstock);
//Checks if you fed a livestock
void sub_809B674(struct Livestock *lstock, u8 *param);
