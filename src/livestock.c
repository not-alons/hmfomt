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

NAKED
//Checks if you fed a livestock
void sub_809B674(struct Livestock *lstock, u8 *param){
    asm_unified("\n\
        push {r4, r5, r6, r7, lr}\n\
        mov r7, r8\n\
        push {r7}\n\
        adds r5, r0, #0\n\
        adds r7, r1, #0\n\
        bl sub_809B2E8\n\
        ldrb r2, [r5, #0x1c]\n\
        lsls r0, r2, #0x1a\n\
        lsrs r3, r0, #0x1f\n\
        cmp r3, #0\n\
        beq _0809B6AE\n\
        lsls r0, r2, #0x1b\n\
        lsrs r0, r0, #0x1b\n\
        cmp r0, #0x1e\n\
        bhi _0809B6A4\n\
        adds r1, r0, #1\n\
        movs r0, #0x1f\n\
        ands r1, r0\n\
        movs r0, #0x20\n\
        rsbs r0, r0, #0\n\
        ands r0, r2\n\
        orrs r0, r1\n\
        strb r0, [r5, #0x1c]\n\
    _0809B6A4:\n\
        ldrb r1, [r5, #0x1c]\n\
        movs r0, #0x21\n\
        rsbs r0, r0, #0\n\
        ands r0, r1\n\
        strb r0, [r5, #0x1c]\n\
    _0809B6AE:\n\
        ldrh r0, [r5, #0x1e]\n\
        ldr r1, _0809B6DC @ =0xFFFFFE00\n\
        ands r1, r0\n\
        strh r1, [r5, #0x1e]\n\
        ldrb r0, [r5, #0x1c]\n\
        lsls r0, r0, #0x19\n\
        cmp r0, #0\n\
        bge _0809B6E0\n\
        cmp r3, #0\n\
        beq _0809B6FC\n\
        bl sub_80D11E4\n\
        movs r1, #0x64\n\
        bl sub_80D0ED0\n\
        ldrb r1, [r7]\n\
        cmp r0, r1\n\
        bge _0809B6FC\n\
        ldrb r1, [r5, #0x1c]\n\
        movs r0, #0x41\n\
        rsbs r0, r0, #0\n\
        ands r0, r1\n\
        b _0809B6FA\n\
        .align 2, 0\n\
    _0809B6DC: .4byte 0xFFFFFE00\n\
    _0809B6E0:\n\
        cmp r3, #0\n\
        bne _0809B6FC\n\
        bl sub_80D11E4\n\
        movs r1, #0x64\n\
        bl sub_80D0ED0\n\
        ldrb r1, [r7, #1]\n\
        cmp r0, r1\n\
        bge _0809B6FC\n\
        ldrb r0, [r5, #0x1c]\n\
        movs r1, #0x40\n\
        orrs r0, r1\n\
    _0809B6FA:\n\
        strb r0, [r5, #0x1c]\n\
    _0809B6FC:\n\
        ldrb r0, [r5, #0x1c]\n\
        lsls r0, r0, #0x19\n\
        cmp r0, #0\n\
        bge _0809B720\n\
        ldrb r2, [r5, #0x1d]\n\
        lsls r0, r2, #0x1b\n\
        lsrs r1, r0, #0x1d\n\
        cmp r1, #6\n\
        bhi _0809B72A\n\
        adds r1, #1\n\
        movs r0, #7\n\
        ands r1, r0\n\
        lsls r1, r1, #2\n\
        movs r0, #0x1d\n\
        rsbs r0, r0, #0\n\
        ands r0, r2\n\
        orrs r0, r1\n\
        b _0809B728\n\
    _0809B720:\n\
        ldrb r1, [r5, #0x1d]\n\
        movs r0, #0x1d\n\
        rsbs r0, r0, #0\n\
        ands r0, r1\n\
    _0809B728:\n\
        strb r0, [r5, #0x1d]\n\
    _0809B72A:\n\
        ldrb r1, [r5, #0x1c]\n\
        lsrs r0, r1, #7\n\
        cmp r0, #0\n\
        bne _0809B76E\n\
        lsls r0, r1, #0x19\n\
        cmp r0, #0\n\
        bge _0809B76E\n\
        ldrb r1, [r5, #0x1d]\n\
        movs r0, #0x1c\n\
        ands r0, r1\n\
        cmp r0, #0\n\
        beq _0809B74A\n\
        lsls r0, r1, #0x1b\n\
        lsrs r0, r0, #0x1d\n\
        subs r4, r0, #1\n\
        b _0809B74C\n\
    _0809B74A:\n\
        movs r4, #0\n\
    _0809B74C:\n\
        cmp r4, #6\n\
        bls _0809B752\n\
        movs r4, #6\n\
    _0809B752:\n\
        bl sub_80D11E4\n\
        movs r1, #0x64\n\
        bl sub_80D0ED0\n\
        adds r1, r7, #2\n\
        adds r1, r1, r4\n\
        ldrb r1, [r1]\n\
        cmp r0, r1\n\
        bge _0809B76E\n\
        ldrb r0, [r5, #0x1c]\n\
        movs r1, #0x80\n\
        orrs r0, r1\n\
        strb r0, [r5, #0x1c]\n\
    _0809B76E:\n\
        ldrb r0, [r5, #0x1c]\n\
        lsrs r1, r0, #7\n\
        adds r3, r0, #0\n\
        cmp r1, #0\n\
        beq _0809B78C\n\
        ldrb r2, [r5, #0x1d]\n\
        lsrs r1, r2, #5\n\
        cmp r1, #6\n\
        bhi _0809B794\n\
        adds r1, #1\n\
        lsls r1, r1, #5\n\
        movs r0, #0x1f\n\
        ands r0, r2\n\
        orrs r0, r1\n\
        b _0809B792\n\
    _0809B78C:\n\
        ldrb r1, [r5, #0x1d]\n\
        movs r0, #0x1f\n\
        ands r0, r1\n\
    _0809B792:\n\
        strb r0, [r5, #0x1d]\n\
    _0809B794:\n\
        movs r0, #0\n\
        mov r8, r0\n\
        lsls r0, r3, #0x18\n\
        cmp r0, #0\n\
        bge _0809B7D0\n\
        ldrb r1, [r5, #0x1d]\n\
        movs r0, #0xe0\n\
        ands r0, r1\n\
        cmp r0, #0\n\
        beq _0809B7AE\n\
        lsrs r0, r1, #5\n\
        subs r4, r0, #1\n\
        b _0809B7B0\n\
    _0809B7AE:\n\
        movs r4, #0\n\
    _0809B7B0:\n\
        cmp r4, #4\n\
        bls _0809B7B6\n\
        movs r4, #4\n\
    _0809B7B6:\n\
        bl sub_80D11E4\n\
        movs r1, #0x64\n\
        bl sub_80D0ED0\n\
        adds r1, r7, #0\n\
        adds r1, #9\n\
        adds r1, r1, r4\n\
        ldrb r1, [r1]\n\
        cmp r0, r1\n\
        bge _0809B7D0\n\
        movs r1, #2\n\
        mov r8, r1\n\
    _0809B7D0:\n\
        mov r0, r8\n\
        cmp r0, #0\n\
        bne _0809B80E\n\
        adds r4, r7, #0\n\
        adds r4, #0x10\n\
        adds r6, r7, #0\n\
        adds r6, #0x20\n\
        adds r0, r5, #0\n\
        bl sub_809B220\n\
        adds r1, r0, #0\n\
        adds r0, r7, #0\n\
        adds r0, #0x14\n\
        b _0809B7F0\n\
    _0809B7EC:\n\
        adds r4, #4\n\
        adds r0, r4, #4\n\
    _0809B7F0:\n\
        cmp r0, r6\n\
        beq _0809B7FA\n\
        ldrh r0, [r4, #4]\n\
        cmp r0, r1\n\
        bls _0809B7EC\n\
    _0809B7FA:\n\
        bl sub_80D11E4\n\
        movs r1, #0x64\n\
        bl sub_80D0ED0\n\
        ldrb r4, [r4, #2]\n\
        cmp r0, r4\n\
        bge _0809B80E\n\
        movs r1, #1\n\
        mov r8, r1\n\
    _0809B80E:\n\
        ldrb r1, [r5, #0x1d]\n\
        movs r0, #4\n\
        rsbs r0, r0, #0\n\
        ands r0, r1\n\
        mov r1, r8\n\
        orrs r0, r1\n\
        strb r0, [r5, #0x1d]\n\
        pop {r3}\n\
        mov r8, r3\n\
        pop {r4, r5, r6, r7}\n\
        pop {r0}\n\
        bx r0\n\
        .align 2, 0\n\
    ");
}

/*
void sub_809B674(struct Livestock *lstock, u8 *param){
    u8 fed, unhappy, sick;
    u32 temp, index, val;
    u8 *p1, *p2, *p3;
    
    sub_809B2E8(&lstock->animal);

    fed = lstock->fed;
    if(fed){
        if(lstock->daysFed < 31)
            lstock->daysFed++;
        lstock->fed = 0;
    }
    
    lstock->currentOutdoorMinutes = 0;

    unhappy = lstock->unhappy;
    if(unhappy){
        if(fed){
            if((s32)sub_80D0ED0(sub_80D11E4(), 100) < param[0]){
                lstock->unhappy = 0;
            }
        }
    }else{
        if(!fed){
            if((s32)sub_80D0ED0(sub_80D11E4(), 100) < param[1]){
                lstock->unhappy = 1;
            }
        }
    }

    unhappy = lstock->unhappy;
    if(unhappy){
        temp = lstock->daysUnhappy;
        if(temp < 7){
            temp++;
            lstock->daysUnhappy = temp;
        }
    }else{
        lstock->daysUnhappy = 0;
    }

    sick = lstock->sick;
    if(!sick){
        unhappy = lstock->unhappy;
        if(unhappy){

            if(lstock->daysUnhappy > 0){
                index = lstock->daysUnhappy - 1;
            }else{
                index = 0;
            }

            if(6 < index)
                index = 6;
            
            if((s32)sub_80D0ED0(sub_80D11E4(), 100) < param[2 + index]){
               lstock->sick = 1;
            }
        }
    }

    sick = lstock->sick; //158
    if(sick){
        temp = lstock->daysSick;
        if(temp < 7){
            lstock->daysSick = temp + 1;
        }
    }else{
        lstock->daysSick = 0;
    }


    val = 0;
    sick = lstock->sick;
    if(sick){

        if(lstock->daysSick){
            index = lstock->daysSick - 1;
        }else{
            index = 0;
        }

        if(4 < index){
            index = 4;
        }

        if((s32)sub_80D0ED0(sub_80D11E4(), 100) < *(param + 9 + index)){
            val = 2;
        }
    }

    if(val == 0){
        p1 = param + 16;
        p2 = param + 32;
        temp = sub_809B220(&lstock->animal);
        p3 = param + 20;
        
        while(p3 != p2 && (*(u16 *)(p1 + 4) <= temp)){
            p1 = p1 + 4;
            p3 = p1 + 4;
        }

        if ((s32)sub_80D0ED0(sub_80D11E4(), 100) < p1[2])
            val = 1;
    }
    
    lstock->unk_0x1D_0 = val;
}
*/
