#include "sheep.h"

extern u8 gUnk_81036A0[];

//Initializes a sheep struct with a name
struct Sheep * sub_809BE94(struct Sheep *sheep, u8 *name, u32 *param, u32 age, u32 daysFed){
    sub_809B828(&sheep->barnAnimal, name, param, age, daysFed);
    sheep->daysUntilProduct = 0;
    return sheep;
}

//Initializes a sheep struct
struct Sheep * sub_809BEBC(struct Sheep *sheep, u32 *param, u32 age, u32 daysFed){
    sub_809B870(&sheep->barnAnimal, param, age, daysFed);
    sheep->daysUntilProduct = 0;
    return sheep;
}

//Returns a sheep's stage
u32 sub_809BEDC(struct Sheep *sheep){
    u32 daysFed = sub_809B4F4((struct Livestock *)sheep);
    u32 age = sub_809B220((struct Animal *)sheep);

    if(daysFed < 14 && age < 20)
        return 0;
    else
        return 1;
}

NAKED
//Returns whether a sheep is sheared
bool8 sub_809BF00(struct Sheep *sheep){
    asm_unified("\n\
        push {lr}\n\
        adds r0, #0x34\n\
        ldrb r1, [r0]\n\
        movs r0, #7\n\
        ands r0, r1\n\
        adds r1, r0, #0\n\
        cmp r0, #0\n\
        beq _0809BF12\n\
        movs r1, #1\n\
    _0809BF12:\n\
        adds r0, r1, #0\n\
        pop {r1}\n\
        bx r1\n\
    ");
}


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
void sub_809BFB4(struct Sheep *sheep){
    sub_809B970(&sheep->barnAnimal, gUnk_81036A0);
    if(sheep->daysUntilProduct)
        sheep->daysUntilProduct--;
}
