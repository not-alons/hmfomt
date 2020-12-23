#include "sheep.h"

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
