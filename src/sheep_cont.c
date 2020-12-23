#include "sheep.h"

//RNG functions
extern u32 sub_80D11E4();
extern u32 sub_80D0ED0(u32 param_1, u32 param_2);


//Returns whether a sheep can be sheared
bool8 sub_809BF18(struct Sheep *sheep){
    return !sub_809B8B0(&sheep->barnAnimal)
    && sub_809BEDC(sheep) == 1
    && !sub_809BF00(sheep);
}

//Returns whether a sheep can be impregnated
bool8 sub_809BF48(struct Sheep *sheep){
    return !sub_809B8B0(&sheep->barnAnimal)
    && !sub_809B50C((struct Livestock *)sheep)
    && sub_809BEDC(sheep) == 1
    && !sub_809BF00(sheep);
}

//Returns a sheep's product level
u32 sub_809BF84(struct Sheep *sheep){
    u32 level, temp;

    sheep->daysUntilProduct = 7;
    level = sub_809B538((struct Livestock *)sheep);
    if(level == 4){
        if(sub_80D0ED0(sub_80D11E4(), 255))
            temp = 4;
        else
            temp = 5;

        level = temp;
    }
    return level;
}

//Checks if you fed a sheep
//TODO: Replace fixed pointer
void sub_809BFB4(struct Sheep *sheep){
    sub_809B970(&sheep->barnAnimal, (u8 *)0x081036A0);
    if(sheep->daysUntilProduct)
        sheep->daysUntilProduct--;
}
