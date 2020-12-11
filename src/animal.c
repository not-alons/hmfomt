#include "animal.h"

//Unknown function
extern u32 sub_80D0ED0(u32 param_1, u32 param_2);
//Unknown function
extern u32 sub_80D11E4();
//Calculates array length
extern u32 sub_80D3B78(u8 *arr);
//Copies one array to another
extern void sub_80D3994(u8 *dest, u8 *src, u32 length);


//Copies the first 8 bytes of one animal to another and returns a pointer
void * sub_809B104(u32 *dest, u32 *src){
    memcpy(dest, src, 8);
}

//Copies the first 8 bytes of one animal to another and returns a pointer
void * sub_809B114(u32 *dest, u32 *src){
    memcpy(dest, src, 8);
}

//Copies the first 8 bytes of one animal to another
void sub_809B124(u32 *dest, u32 *src){
    memcpy(dest, src, 8);
}

//Initializes an animal struct with a name
struct Animal * sub_809B12C(struct Animal *animal, u8 *name, u32* param, u32 age){
    u8* temp;
    u32 length;

    sub_809B104(&animal->unk_0x00, param);

    temp = animal->name;
    length = sub_80D3B78(name);
    if (0xc < length)
        length = 0xc;
    
    sub_80D3994(temp, name, length);
    animal->name[length] = 0;

    animal->age = age;
    animal->festivalWinner = 0;
    animal->brushed = 0;
    animal->talked = 0;
    animal->affection = 0;

    return animal;
}

//Initializes an animal struct without a name
struct Animal * sub_809B1A4(struct Animal *animal, u32* param, u32 age){
    sub_809B104(&animal->unk_0x00, param);

    animal->name[0] = 0;
    animal->age = age;
    animal->festivalWinner = 0;
    animal->brushed = 0;
    animal->talked = 0;
    animal->affection = 0;

    return animal;
}

//Returns a pointer to an animal's name if it isn't empty, otherwise returns a pointer to 0x08103658
u8 * sub_809B1F4(struct Animal *animal){
    u8 *temp = animal->name;
    u8 empty = temp[0] == 0;

    if(!empty)
        return temp;
    else
        return (u8 *)0x08103658;
}

//Returns whether the animal has won a festival
bool8 sub_809B218(struct Animal *animal){
    return animal->festivalWinner;
}

//Returns an animal's age
u32 sub_809B220(struct Animal *animal){
    return animal->age;
}

//Returns an animal's affection
u32 sub_809B228(struct Animal *animal){
    return animal->affection;
}

//Returns whether the animal has been brushed
bool8 sub_809B230(struct Animal *animal){
    return animal->brushed;
}

//Returns whether the animal has been talked to
bool8 sub_809B238(struct Animal *animal){
    return animal->talked;
}

//Sets an animal's name
void sub_809B240(struct Animal *animal, u8 *arr) {
  u8 *temp = animal->name;
  
  u32 length = sub_80D3B78(arr);
  if (0xc < length)
    length = 0xc;

  sub_80D3994(temp, arr, length);
  animal->name[length] = 0;
}

//Sets the festival winner flag
void sub_809B26C(struct Animal *animal){
    animal->festivalWinner = TRUE;
}

//Sets the brushed flag
void sub_809B278(struct Animal *animal){
    if(!animal->brushed)
        animal->brushed = TRUE;
}

//Sets the talked flag
void sub_809B290(struct Animal *animal){
    if(!animal->talked)
        animal->talked = TRUE;
}

//Increases an animal's affection
void sub_809B2A8(struct Animal *animal, u32 amount){
    u32 total = animal->affection + amount;
    
    //Clamps the value between 0 and 250
    if ((s32)total < 0)
        total = 0;
    else if (total > 250)
        total = 250;
        
    animal->affection = total;
}

//Decreases an animal's affection
void sub_809B2DC(struct Animal *animal, u32 amount){
    sub_809B2A8(animal, -amount);
}

//Increments an animal's age and clears the brushed and talked flags
void sub_809B2E8(struct Animal *animal){
    if((u32)animal->age <= 1022)
        animal->age++;
        
    animal->brushed = FALSE;
    animal->talked = FALSE;
}
