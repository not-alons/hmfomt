#include "pet.h"

//Unknown function
extern u32 sub_80D0ED0(u32 param_1, u32 param_2);
//Unknown function
extern u32 sub_80D11E4();

//Initializes a pet struct with a name
//Used by the dog
struct Pet * sub_809B32C(struct Pet *pet, u8 *name, u32 *param, u32 age){
    sub_809B12C(&pet->animal, name, param, age);
    pet->_0x1C = 0;
    pet->_0x1D_0 = FALSE;
    pet->unk_0x1D_1 = FALSE;
    return pet;
}

//Initializes a pet struct without a name
//Used by the horse
struct Pet * sub_809B350(struct Pet *pet, u32 *param, u32 age){
    sub_809B1A4(&pet->animal, param, age);
    pet->_0x1C = 0;
    pet->_0x1D_0 = FALSE;
    pet->unk_0x1D_1 = FALSE;
    return pet;
}

//Returns the number of times (individual days) you've ridden your horse or played catch with your dog
u32 sub_809B374(struct Pet *pet){ //Times played with dog?
    return pet->_0x1C;
}

//Returns whether you've ridden your horse or played catch with your dog that day
bool8 sub_809B378(struct Pet *pet){
    return pet->_0x1D_0;
}

//Returns the unkown flag 0x1D_1
bool8 sub_809B380(struct Pet *pet){
    return pet->unk_0x1D_1;
}

//Increases 0x1C
void sub_809B388(struct Pet *pet, u32 amount){
    u32 total = pet->_0x1C + amount;

    //Clamps the value between 0 and 250
    if ((s32)total < 0)
        total = 0;
    else if (total > 250)
        total = 250;
        
    pet->_0x1C = total;
}

//Decreases 0x1C
void sub_809B3A4(struct Pet *pet, u32 amount){
    sub_809B388(pet, -amount);
}

//Sets 0x1D_0
//Called when you ride your horse or play catch with your dog
void sub_809B3B0(struct Pet *pet){
    pet->_0x1D_0 = TRUE;
}

//Sets the unkown flag 0x1D_1
void sub_809B3BC(struct Pet *pet){
    pet->unk_0x1D_1 = TRUE;
}

//Checks if you talked, brushed, or played with/rode your dog/horse
void sub_809B3C8(struct Pet *pet, u8 param){
    bool8 brushed = sub_809B230(&pet->animal);
    bool8 talked = sub_809B238(&pet->animal);
    bool8 temp; //Won't match without these

    sub_809B2E8(&pet->animal);

    if(!param
    && !brushed
    && !talked
    && !pet->_0x1D_0
    && pet->unk_0x1D_1 < 1
    && (s32)sub_80D0ED0(sub_80D11E4(), 100) < 30)
        sub_809B2DC(&pet->animal, 1);
    
    temp = pet->_0x1D_0;
    if(temp){
        sub_809B388(pet, 1);
        pet->_0x1D_0 = FALSE;
    }
    if(pet->unk_0x1D_1){
        sub_809B2A8(&pet->animal, 1);
        pet->unk_0x1D_1 = FALSE;
    }
}
