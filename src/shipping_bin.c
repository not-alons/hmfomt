#include "shipping_bin.h"



//Resets the amount of items shipped
ShippingBin * sub_800B0DC(ShippingBin *sbin){
    u32 temp, index;

    sbin->value = 0;

    for(temp = NUM_PRODUCTS - 1, index = 0; temp != -1; index++, temp--)
        sub_800B26C(&sbin->shippingData[index]);

    for(index = 0; index < 22; index++)
        sub_800B2D4(&sbin->shippingData[gUnk_80E95CC[index]]);

    return sbin;
}

//Returns the shipping bin's value
u32 sub_800B120(ShippingBin *sbin){
    return sbin->value;
}

//Returns whether a product is visible in the Memo menu
u32 sub_800B124(ShippingBin *sbin, s32 product){
    if(product < NUM_PRODUCTS)
        return sub_800B280(&sbin->shippingData[product]);
    else
        return 0;
}

//Returns the amount of shipped X product
u32 sub_800B140(ShippingBin *sbin, s32 product){
    if(product < NUM_PRODUCTS)
        return sub_800B288(&sbin->shippingData[product]);
    else
        return 0;
}

//Returns whether you've shipped at least one of each product
u8 sub_800B15C(ShippingBin *sbin){
    u32 product = 0;

    while(1){
        if(!(u8)sub_800B280(&sbin->shippingData[product]) || !sub_800B288(&sbin->shippingData[product]))
            return 0;

        if(++product > NUM_PRODUCTS - 1)
            return 1;
    }
}

//Returns whether you've shipped at least one of each crop
u8 sub_800B18C(ShippingBin *sbin){
    u32 temp = 0;
    u32 product;

    while(1){
        product = gUnk_80E95E2[temp];
        if(!(u8)sub_800B280(&sbin->shippingData[product]) || !sub_800B288(&sbin->shippingData[product]))
            return 0;

        if(++temp > 14)
            return 1;
    }
}

//Returns whether you've shipped at least one of Bracelet - Topaz
u8 sub_800B1CC(ShippingBin *sbin){
    u32 temp = 0;
    u32 product;

    while(1){
        product = gUnk_80E95F1[temp];
        if(!(u8)sub_800B280(&sbin->shippingData[product]) || !sub_800B288(&sbin->shippingData[product]))
            return 0;

        if(++temp > 19)
            return 1;
    }
}

//Adds to the shipping bin's value
void sub_800B20C(ShippingBin *sbin, ProductSlot *slot) {
    u32 price = sub_800E198(slot);

    if (price > 0) {
        sub_800B29C(&sbin->shippingData[sub_800E194(slot)]);
#ifndef NONMATCHING
        asm(""::"r"(sbin->value));
#endif
        sbin->value += min(price, 1000000000 - sbin->value);
    }
}

//Resets the shipping bin's value
void sub_800B24C(ShippingBin *sbin){
    sbin->value = 0;
}

//Sets the visible flag of a product
void sub_800B254(ShippingBin *sbin, s32 product){
    if(product < NUM_PRODUCTS)
        sub_800B2D4(&sbin->shippingData[product]);
}

//Resets a ProductShippingData struct
void sub_800B26C(ProductShippingData *data){
    data->amountShipped = 0;
    data->visibleInMenu = FALSE;
}

//Returns whether the product is visible in the Memo menu
u32 sub_800B280(ProductShippingData *data){
    return data->visibleInMenu;
}

//Returns the amount of shipped X product
u32 sub_800B288(ProductShippingData *data){
    if(data->visibleInMenu)
        return data->amountShipped;
    else
        return 0; 
}

//Sets the visible flag and increments amount shipped
void sub_800B29C(ProductShippingData *data){
    if(!data->visibleInMenu)
        data->visibleInMenu = TRUE;

    if((u32)data->amountShipped < 1000000000)
        data->amountShipped++;
}

//Sets the visible flag
void sub_800B2D4(ProductShippingData *data){
    if(!data->visibleInMenu)
        data->visibleInMenu = TRUE;
}
