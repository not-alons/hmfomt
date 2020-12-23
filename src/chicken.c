#include "chicken.h"

//RNG functions
extern u32 sub_80D11E4();
extern u32 sub_80D0ED0(u32 param_1, u32 param_2);

//Initializes a chicken struct with a name
struct Chicken * sub_809BC64(struct Chicken *chicken, u8*name, u32 *param, u32 age, u32 daysFed){
    sub_809B454(&chicken->lstock, name, param, age, daysFed);
    chicken->unk_0x24 = 0;
    chicken->unk_0x28 = 0;
    chicken->unk_0x2A = 0;
    return chicken;
}

//Initializes a chicken struct
struct Chicken * sub_809BC8C(struct Chicken *chicken, u32 *param, u32 age, u32 daysFed){
    sub_809B4A4(&chicken->lstock, param, age, daysFed);
    chicken->unk_0x24 = 0;
    chicken->unk_0x28 = 0;
    chicken->unk_0x2A = 0;
    return chicken;
}

//Returns whether the chicken is an adult or not
u32 sub_809BCAC(struct Chicken *chicken){
    if(sub_809B220((struct Animal *)chicken) < 7)
        return 0;
    else
        return 1;
}

//Returns whether the chicken is an adult, healthy and happy
bool8 sub_809BCC0(struct Chicken *chicken){
    return sub_809BCAC(chicken) == TRUE
    && !sub_809B50C(&chicken->lstock)
    && !sub_809B504(&chicken->lstock);
}

//Sets the fed flag
void sub_809BCF0(struct Chicken *chicken){
    sub_809B65C(&chicken->lstock);
}

//Returns a chicken's product level
u32 sub_809BCFC(struct Chicken *chicken){
    u32 level, temp;
    
    level = sub_809B538(&chicken->lstock);
    if(level == 4){
        if(sub_80D0ED0(sub_80D11E4(), 255))
            temp = 4;
        else
            temp = 5;

        level = temp;
    }
    return level;
}

void sub_809BD20(struct Chicken *chicken, u32* param){
    *(u32 *)&chicken->unk_0x28 = *param;
    chicken->unk_0x24 = 0;
}

void sub_809BD2C(struct Chicken *chicken, u32* param){
    *(u32 *)&chicken->unk_0x28 = *param;
    chicken->unk_0x24 = 1;
}

//Checks if you fed a chicken
//TODO: Replace fixed pointer
void sub_809BD38(struct Chicken *chicken, u32* param){
    sub_809B674(&chicken->lstock, (u8 *)0x08103660);
}
