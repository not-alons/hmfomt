#include "shipping_bin.h"

// Starting products
const u8 unk_80E95CC[] = {
    PRODUCT_TURNIP,
    PRODUCT_POTATO,
    PRODUCT_CUCUMBER,
    PRODUCT_STRAWBERRY,
    PRODUCT_TOMATO,
    PRODUCT_CORN,
    PRODUCT_ONION,
    PRODUCT_PUMPKIN,
    PRODUCT_EGGPLANT,
    PRODUCT_CARROT,
    PRODUCT_SWEET_POTATO,
    PRODUCT_SPINACH,
    PRODUCT_EGG,
    PRODUCT_EGG_GOOD,
    PRODUCT_EGG_HIGH,
    PRODUCT_MILK_S,
    PRODUCT_MILK_M,
    PRODUCT_MILK_L,
    PRODUCT_WOOL_S,
    PRODUCT_WOOL_M,
    PRODUCT_WOOL_L,
    PRODUCT_CHOCOLATE,
};

// All crops
const u8 unk_80E95E2[] = {
    PRODUCT_TURNIP,
    PRODUCT_POTATO,
    PRODUCT_CUCUMBER,
    PRODUCT_STRAWBERRY,
    PRODUCT_CABBAGE,
    PRODUCT_TOMATO,
    PRODUCT_CORN,
    PRODUCT_ONION,
    PRODUCT_PUMPKIN,
    PRODUCT_PINEAPPLE,
    PRODUCT_EGGPLANT,
    PRODUCT_CARROT,
    PRODUCT_SWEET_POTATO,
    PRODUCT_SPINACH,
    PRODUCT_GREEN_PEPPER,
};

// Junk Ore - Amethyst
const u8 unk_80E95F1[] = {
    PRODUCT_ORE_JUNK,
    PRODUCT_ORE_COPPER,
    PRODUCT_ORE_SILVER,
    PRODUCT_ORE_GOLD,
    PRODUCT_ORE_MYSTRILE,
    PRODUCT_ORE_ORICHALC,
    PRODUCT_ORE_ADAMANTITE,
    PRODUCT_STONE_MOON,
    PRODUCT_SAND_ROSE,
    PRODUCT_DIAMOND_PINK,
    PRODUCT_ALEXANDRITE,
    PRODUCT_STONE_MYTHIC,
    PRODUCT_DIAMOND,
    PRODUCT_EMERALD,
    PRODUCT_RUBY,
    PRODUCT_TOPAZ,
    PRODUCT_PERIDOT,
    PRODUCT_FLUORITE,
    PRODUCT_AGATE,
    PRODUCT_AMETHYST,
};

//Resets the amount of items shipped
ShippingBin * sub_800B0DC(ShippingBin *sbin){
    u32 temp, index;

    sbin->value = 0;

    for(temp = NUM_PRODUCTS - 1, index = 0; temp != -1; index++, temp--)
        sub_800B26C(&sbin->shippingData[index]);

    for(index = 0; index < 22; index++)
        sub_800B2D4(&sbin->shippingData[unk_80E95CC[index]]);

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
        product = unk_80E95E2[temp];
        if(!(u8)sub_800B280(&sbin->shippingData[product]) || !sub_800B288(&sbin->shippingData[product]))
            return 0;

        if(++temp > 14)
            return 1;
    }
}

//Returns whether you've shipped at least one of Junk Ore - Amethyst
u8 sub_800B1CC(ShippingBin *sbin){
    u32 temp = 0;
    u32 product;

    while(1){
        product = unk_80E95F1[temp];
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
