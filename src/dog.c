#include "dog.h"

//Returns whether the dog is an adult or not
bool8 sub_809BB34(struct Dog *dog){
    return 59 < sub_809B220((struct Animal *)dog);
}

void sub_809BB48(struct Dog *dog, u32 *param){
    *(u32 *)&dog->unk_0x24 = *param;
    dog->unk_0x20 = 0;
}

void sub_809BB54(struct Dog *dog, u32 *param){
    u32 temp = param[1];

    *(u32 *)&dog->unk_0x24 = *param;
    dog->unk_0x28 = temp;
    dog->unk_0x20 = 1;
}

void sub_809BB64(struct Dog *dog, u32 *param){
    *(u32 *)&dog->unk_0x24 = *param;
    dog->unk_0x20 = 2;
}

void sub_809BB70(struct Dog *dog, u32 *param){
    u32 temp = param[1];

    *(u32 *)&dog->unk_0x24 = *param;
    dog->unk_0x28 = temp;
    dog->unk_0x20 = 3;
}

void sub_809BB80(struct Dog *dog, u32 *param){
    *(u32 *)&dog->unk_0x24 = *param;
    dog->unk_0x20 = 4;
}

void sub_809BB8C(struct Dog *dog, u32 *param){
    u32 temp = param[1];

    *(u32 *)&dog->unk_0x24 = *param;
    dog->unk_0x28 = temp;
    dog->unk_0x20 = 5;
}

void sub_809BB9C(struct Dog *dog, u32 *param){
    *(u32 *)&dog->unk_0x24 = *param;
    dog->unk_0x20 = 6;
}

//Checks if you talked to or played catch/frisbee your dog
void sub_809BBA8(struct Dog *dog){
    sub_809B3C8(&dog->pet, (((u8 *)dog)[0x2D] & 0x1C) != 0);
    dog->unk_0x2D_2 = 0;
}

//Initializes a dog struct with a name
struct Dog * _0809BBD0(struct Dog *dog, u8 *name, u32 *param, u32 age){
    sub_809B32C(&dog->pet, name, param, age);
    dog->unk_0x20 = 0;
    dog->unk_0x24 = 0;
    dog->unk_0x26 = 0;
    return dog;
}
