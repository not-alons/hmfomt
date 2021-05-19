#include "inventory.h"

// Initializes a product slot
void sub_800E0F0(ProductSlot *slot) {
    slot->product = PRODUCT_NONE;
}

// Sets a slot's product
void sub_800E0F8(ProductSlot *slot, u8 product) {
    slot->product = product;
}

// Initializes a product slot from a food slot
ProductSlot * sub_800E0FC(ProductSlot *pSlot, FoodSlot fSlot) {
    FoodSlot sp = fSlot;
    u32 food;
    s32 product;
    const Product *ptr;

    pSlot->product = PRODUCT_NONE;

    food = sub_800DCB4(&sp);
    product = 0;
    ptr = &gProducts[0];

    while(ptr->type || ptr->item != food) {
        if(++product >= PRODUCT_NONE)
            return pSlot;

        ptr = &gProducts[product];
    }

    pSlot->product = product;
    return pSlot;
}

// Initializes a product slot from an article
ProductSlot * sub_800E148(ProductSlot *slot, u8 article) {
    ArticleSlot sp;
    u32 _article;
    s32 product;
    const Product *ptr;

    sp.article = article;
    slot->product = PRODUCT_NONE;

    _article = sub_800DF54(&sp);
    product = 0;
    ptr = &gProducts[0];

    while(!ptr->type || ptr->item != _article) {
        if(++product >= PRODUCT_NONE)
            return slot;

        ptr = &gProducts[product];
    }

    slot->product = product;
    return slot;
}

// Returns the slot's product
u32 sub_800E194(ProductSlot *slot) {
    return slot->product;
}

// Returns the slot's product price
u32 sub_800E198(ProductSlot *slot) {
    u8 product = slot->product;
    u8 bool = product < NUM_PRODUCTS;

    if(bool)
        return gProducts[slot->product].price;
    else
        return 0;
}


typedef struct UnkStruct_8 {
    u8 _0;
    u8 _1;
    u8 _2;
    u8 _3;
    u8 _4;
    u8 _5;
    u8 _6;
    u8 _7;
} UnkStruct_8;

// Returns the slot's product name
const u8 * sub_800E1C0(ProductSlot *slot) {
    UnkStruct_8 sp;
    u8 product, bool;

#ifndef NONMATCHING
    asm("ldrb r1, [r0]");
#else
    product = slot->product;
#endif
    bool = product < NUM_PRODUCTS;
    
    if(bool) {
        const Product *ptr = &gProducts[product];
        if(!ptr->type){
            sub_800DCA8((FoodSlot *)&sp, ptr->item);
            return sub_800DCB8((FoodSlot *)&sp);
        } else {
            sub_800DF50((ArticleSlot *)&sp._4, ptr->item);
            return sub_800DF58((ArticleSlot *)&sp._4);
        }
    }
    
    return gText_BrokenShipment;
}

// Returns the slot's unkown short
u16 sub_800E214(ProductSlot *slot) {
    UnkStruct_8 sp;
    u8 product, bool;

#ifndef NONMATCHING
    asm("ldrb r1, [r0]");
#else
    product = slot->product;
#endif
    bool = product < NUM_PRODUCTS;
    
    if(bool) {
        const Product *ptr = &gProducts[product];
        if(!ptr->type){
            sub_800DCA8((FoodSlot *)&sp, ptr->item);
            return sub_800DCE0((FoodSlot *)&sp);
        } else {
            sub_800DF50((ArticleSlot *)&sp._4, ptr->item);
            return sub_800DF84((ArticleSlot *)&sp._4);
        }
    }
    
    return 0;
}
