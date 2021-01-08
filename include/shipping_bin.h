#include "global.h"

typedef enum Product{
    NUM_PRODUCTS = 103
} Product;

typedef struct ProductShippingData{
    u32 amountShipped:31;
    u32 visibleInMenu:1;
} ProductShippingData;

typedef struct ShippingBin{
    u32 value;
    ProductShippingData shippingData[NUM_PRODUCTS];
} ShippingBin;

extern u8 gUnk_80E95CC[];
extern u8 gUnk_80E95E2[];
extern u8 gUnk_80E95F1[];

//Resets a ProductShippingData struct
void sub_800B26C(ProductShippingData *);
//Returns whether the product is visible in the Memo menu
u32 sub_800B280(ProductShippingData *);
//Returns the amount of shipped X product
u32 sub_800B288(ProductShippingData *);
//Sets the visible flag and increments amount shipped
void sub_800B29C(ProductShippingData *);
//Sets the visible flag
void sub_800B2D4(ProductShippingData *);
