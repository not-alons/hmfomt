#include "cow.h"

//RNG functions
extern u32 sub_80D11E4();
extern u32 sub_80D0ED0(u32 param_1, u32 param_2);


//Initializes a cow struct with a name
struct Cow * sub_809BD48(struct Cow *cow, u8 *name, u32 *param, u32 age, u32 daysFed){
    sub_809B828(&cow->barnAnimal, name, param, age, daysFed);
    cow->milked = 0;
    return cow;
}

//Initializes a cow struct
struct Cow * sub_809BD70(struct Cow *cow, u32 *param, u32 age, u32 daysFed){
    sub_809B870(&cow->barnAnimal, param, age, daysFed);
    cow->milked = 0;
    return cow;
}

//Returns a cow's stage
u32 sub_809BD90(struct Cow *cow){
    u32 daysFed = sub_809B4F4((struct Livestock *)cow);
    u32 age = sub_809B220((struct Animal *)cow);

    if(daysFed < 14 && age < 20)
        return 0;
    else if(daysFed < 21 && age < 34)
        return 1;
    else
        return 2;
}

//Returns whether a cow can be milked or not
bool8 sub_809BDC0(struct Cow *cow){
    return !cow->milked
    && !sub_809B8B0(&cow->barnAnimal)
    && !sub_809B50C((struct Livestock *)cow)
    && !sub_809B504((struct Livestock *)cow)
    && sub_809BD90(cow) == 2;
}

//Returns whether a cow can be impregnated
bool8 sub_809BE08(struct Cow *cow){
    return !sub_809B8B0(&cow->barnAnimal)
    && !sub_809B50C((struct Livestock *)cow)
    && sub_809BD90(cow) == 2;
}

//Returns whether a cow has been milked
bool8 sub_809BE38(struct Cow *cow){
    return cow->milked;
}

//Returns a cow's product level
u32 sub_809BE44(struct Cow *cow){
    u32 level, temp;

    cow->milked = 1;
    level = sub_809B538((struct Livestock *)cow);
    if(level == 4){
        if(sub_80D0ED0(sub_80D11E4(), 255))
            temp = 4;
        else
            temp = 5;

        level = temp;
    }
    return level;
}

//Checks if you fed a cow and resets the milked flag
//TODO: Replace fixed pointer
void sub_809BE74(struct Cow *cow){
    sub_809B970(&cow->barnAnimal, (u8 *)0x08103680);
    cow->milked = FALSE;
}
