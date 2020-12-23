#include "livestock.h"

//Initializes a livestock struct with a name
struct Livestock * sub_809B454(struct Livestock *lstock, u8 *name, u32 *param, u32 age, u32 daysFed){
    sub_809B12C(&lstock->animal, name, param, age);
    
    lstock->daysFed = daysFed;
    lstock->fed = FALSE;
    lstock->unhappy = FALSE;
    lstock->sick = FALSE;

    lstock->unk_0x1D_0 = 0;
    lstock->daysUnhappy = 0;
    lstock->daysSick = 0;
    
    lstock->currentOutdoorMinutes = 0;
    lstock->totalOutdoorMinutes = 0;

    return lstock;
}

//Initializes a livestock struct
struct Livestock * sub_809B4A4(struct Livestock *lstock, u32 *param, u32 age, u32 daysFed){
    sub_809B1A4(&lstock->animal, param, age);
    
    lstock->daysFed = daysFed;
    lstock->fed = FALSE;
    lstock->unhappy = FALSE;
    lstock->sick = FALSE;

    lstock->unk_0x1D_0 = 0;
    lstock->daysUnhappy = 0;
    lstock->daysSick = 0;
    
    lstock->currentOutdoorMinutes = 0;
    lstock->totalOutdoorMinutes = 0;

    return lstock;
}

//Returns the number of days fed
u32 sub_809B4F4(struct Livestock *lstock){
    return lstock->daysFed;
}

//Returns the fed flag
bool8 sub_809B4FC(struct Livestock *lstock){
    return lstock->fed;
}

//Returns the unhappy flag
bool8 sub_809B504(struct Livestock *lstock){
    return lstock->unhappy;
}

//Returns the sick flag
bool8 sub_809B50C(struct Livestock *lstock){
    return lstock->sick;
}

//Returns the unknown 2bit value 0x1D_0
u8 sub_809B514(struct Livestock *lstock){
    return lstock->unk_0x1D_0;
}

//Returns the current number of outdoor minutes
u32 sub_809B51C(struct Livestock *lstock){
    return lstock->currentOutdoorMinutes;
}

//Returns the total number of outdoor minutes 
u32 sub_809B524(struct Livestock *lstock){
    return lstock->totalOutdoorMinutes;
}

//Returns a livestock's product level
u32 sub_809B538(struct Livestock *lstock){
    u32 affection = sub_809B228(&lstock->animal);
    
    //0-3 Hearts
    if(affection <= 100)
        return 0;

    //4-7 Hearts
    else if(affection <= 200)
        return 1;
    
    //Festival winner + 8-10 Hearts
    else if(sub_809B218(&lstock->animal)){
        //600 outdoor hours
        if(sub_809B524(lstock) >= 36000)
            return 4;
        else
            return 3;
    }

    //8-10 Hearts
    return 2;
}

struct UnkStruct{
    u32 _0;
    u32 _4;
    u32 _8;
    u32 _C;
};

//Increases the number of current and total outdoor minutes
void sub_809B57C(struct Livestock *lstock, u32 param){
    struct UnkStruct _struct;

    u32 temp = lstock->currentOutdoorMinutes;
    if (temp <= 510) {
        u32 *ptr, *ptr2;
        _struct._0 = temp + param;
        _struct._4 = 511;
        ptr2 = &_struct._4;
        ptr = &_struct._0;
        if (_struct._0 > _struct._4)
            ptr = ptr2;
        lstock->currentOutdoorMinutes = *ptr;
    }
    
    temp = lstock->totalOutdoorMinutes;
    if (temp < 0xFFFF) {
        u32 *ptr, *ptr2;
        _struct._8 = temp + param;
        _struct._C = 0xFFFF;
        ptr2 = &_struct._C;
        ptr = &_struct._8;
        if (_struct._8 > _struct._C)
            ptr = ptr2;
        lstock->totalOutdoorMinutes = *ptr;
    }
}

//Resets the current number of outdoor minutes
void sub_809B608(struct Livestock *lstock){
    lstock->currentOutdoorMinutes = 0;
}

//Sets the sick flag
void sub_809B618(struct Livestock *lstock){
    lstock->sick = TRUE;
}

//Clears the sick flag and days
void sub_809B624(struct Livestock *lstock, u32 param){
    lstock->sick = FALSE;
    lstock->daysSick = 0;
}

//Sets the unhappy flag
void sub_809B638(struct Livestock *lstock){
    lstock->unhappy = TRUE;
}

//Clears the unhappy flag and days
void sub_809B644(struct Livestock *lstock, u32 param){
    lstock->unhappy = FALSE;
    lstock->daysUnhappy = 0;
}

//Sets the fed flag
void sub_809B65C(struct Livestock *lstock){
    bool8 temp = lstock->fed;
    if(!temp)
        lstock->fed = TRUE;
}
