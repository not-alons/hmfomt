#include "barn_animal.h"

//Initializes a barn animal struct with a name
struct BarnAnimal * sub_809B828(struct BarnAnimal *barnAnimal, u8 *name, u32 *param, u32 age, u32 daysFed){
    sub_809B454(&barnAnimal->lstock, name, param, age, daysFed);
    
    barnAnimal->pregnant = FALSE;
    barnAnimal->daysPregnant = 0;
    barnAnimal->daysPregnantHealthy = 0;

    barnAnimal->unk_0x28 = 0;
    barnAnimal->unk_0x2C = 0;
    barnAnimal->unk_0x2E = 0;

    return barnAnimal;
}

//Initializes a barn animal struct
struct BarnAnimal * sub_809B870(struct BarnAnimal *barnAnimal, u32 *param, u32 age, u32 daysFed){
    sub_809B4A4(&barnAnimal->lstock, param, age, daysFed);
    
    barnAnimal->pregnant = FALSE;
    barnAnimal->daysPregnant = 0;
    barnAnimal->daysPregnantHealthy = 0;

    barnAnimal->unk_0x28 = 0;
    barnAnimal->unk_0x2C = 0;
    barnAnimal->unk_0x2E = 0;

    return barnAnimal;
}

//Returns the pregnant flag
bool8 sub_809B8B0(struct BarnAnimal *barnAnimal){
    return barnAnimal->pregnant;
}

//Returns the number of days pregnant
u8 sub_809B8BC(struct BarnAnimal *barnAnimal){
    if(!barnAnimal->pregnant)
        return 0;
    else
        return barnAnimal->daysPregnant;
}

//Returns the number of days pregnant and healthy
u8 sub_809B8D4(struct BarnAnimal *barnAnimal){
    if(!barnAnimal->pregnant)
        return 0;
    else
        return barnAnimal->daysPregnantHealthy;
}

//Sets the fed flag
void sub_809B8F0(struct BarnAnimal *barnAnimal){
    sub_809B65C(&barnAnimal->lstock);
}

//Sets the pregnant flag
void sub_809B8FC(struct BarnAnimal *barnAnimal){
    barnAnimal->pregnant = TRUE;
    barnAnimal->daysPregnant = 0;
    barnAnimal->daysPregnantHealthy = 0;
}

//Clears the pregnant flag
void sub_809B91C(struct BarnAnimal *barnAnimal){
    barnAnimal->pregnant = FALSE;
    barnAnimal->daysPregnant = 0;
    barnAnimal->daysPregnantHealthy = 0;
}

void sub_809B940(struct BarnAnimal *barnAnimal, u32 *param){
    *(u32 *)&barnAnimal->unk_0x2C = *param;
    barnAnimal->unk_0x28 = 0;
}

void sub_809B94C(struct BarnAnimal *barnAnimal, u32 *param){
    *(u32 *)&barnAnimal->unk_0x2C = *param;
    barnAnimal->unk_0x28 = 1;
}

void sub_809B958(struct BarnAnimal *barnAnimal, u32 *param){
    u32 temp = param[1];

    *(u32 *)&barnAnimal->unk_0x2C = *param;
    barnAnimal->unk_0x30 = temp;
    barnAnimal->unk_0x28 = 2;
}

//Called when being pushed
void sub_809B968(struct BarnAnimal *barnAnimal){
    barnAnimal->unk_0x28 = 3;
}

//Checks if you fed a barn animal
void sub_809B970(struct BarnAnimal *barnAnimal, u8 *param){
    u32 temp;

    sub_809B674(&barnAnimal->lstock, param);
    if(sub_809B8B0(barnAnimal)){
        temp = barnAnimal->daysPregnant;
        if(temp < 31)
            barnAnimal->daysPregnant++;

        if(!sub_809B50C(&barnAnimal->lstock)){
            temp = barnAnimal->daysPregnantHealthy;
            if(temp < 31)
                barnAnimal->daysPregnantHealthy++;
        }
    }
}
