#include "inventory.h"

// Sets a slot's article
void sub_800DF50(ArticleSlot *slot, u8 article) {
    slot->article = article;
}

// Returns a slot's article
s32 sub_800DF54(ArticleSlot *slot) {
    return slot->article;
}

// Returns a pointer to a slot's article name
const u8 * sub_800DF58(ArticleSlot *slot) {
    u8 article = slot->article;
    u8 bool = article < NUM_ARTICLES;

    if(bool)
        return gArticles[slot->article].name;
    else
        return gText_BrokenArticle;
}

// Returns a slot's icon index
u16 sub_800DF84(ArticleSlot *slot) {
    u8 article = slot->article;
    u8 bool = article < NUM_ARTICLES;

    if(bool)
        return gArticles[slot->article].icon;
    else
        return 457; // Turnip
}

// Returns whether a slot's article can be gift wrapped
u8 sub_800DFB0(ArticleSlot *slot) {
    switch(slot->article) {
        default:
            return TRUE;

        case ARTICLE_JEWEL_GODDESS:
        case ARTICLE_JEWEL_KAPPA:
        case ARTICLE_JEWEL_TRUTH:
        case ARTICLE_KAREN_WINE:
        case ARTICLE_POPURI_MUD_BALL:
        case ARTICLE_ANN_MUSIC_BOX:
        case ARTICLE_MARY_GREAT_BOOK:
        case ARTICLE_ELLI_PRESSED_FLOWER:
        case ARTICLE_FRISBEE:
            return FALSE;
    }
}

// Returns a pointer to a slot's article description
const u8 * sub_800DFD4(ArticleSlot *slot){
    u8 article = slot->article;
    u8 bool = article < NUM_ARTICLES;

    if(bool){
        if(gArticles[slot->article].desc != NULL)
            return gArticles[slot->article].desc;
        else
            return gText_NoExplanation;
    }
    
#ifndef NONMATCHING
    return (u8 *)0x080E962C;
#else
    return gText_NoExplanation;
#endif
}

// Initializes an article slot
ArticleSlot * sub_800E010(ArticleSlot *slot) {
    sub_800DF50(slot, ARTICLE_NONE);
    slot->quantity = 0;
    return slot;
}

struct UnkStruct_8 {
    u32 _0;
    u32 _4;
};

// Initializes an article slot
ArticleSlot * sub_800E028(ArticleSlot *slot, u8 article, u32 amount) {
    struct UnkStruct_8 _struct;
    u32 temp;

    _struct._4 = amount;
    slot->article = article;
#ifndef NONMATCHING
        asm("ldr r2, [sp, #0x4]"::""(_struct._4));
#endif
    if(_struct._4 != 0){
        u32 *ptr, *ptr2;

        _struct._0 = 99;
        ptr2 = &_struct._4;
        ptr = &_struct._0;
        
        if(_struct._0 > amount)
            ptr = ptr2;
        temp = *(u8*)ptr;
    }else{
        temp = 1;
    }

    slot->quantity = temp;
    return slot;
}

// Returns a slot's article
u32 sub_800E058(ArticleSlot *slot) {
    ArticleSlot sp;

    if(slot->quantity != 0)
        return slot->article;

    sub_800DF50(&sp, ARTICLE_NONE);
    return sp.article;
}

// Returns whether a slot is empty or not
bool8 sub_800E07C(ArticleSlot *slot) {
    return slot->quantity == 0;
}

// Returns a slot's quantity
u32 sub_800E090(ArticleSlot *slot) {
    if(slot->quantity != 0)
        return slot->quantity;
    else
        return 0;
}

// Adds to a slot's quantity
void sub_800E0A4(ArticleSlot *slot, u32 amount) {
    struct UnkStruct_8 _struct;

    if(slot->quantity != 0){
        u32 *ptr, *ptr2;

        _struct._0 = 99;
        _struct._4 = slot->quantity + amount;
        ptr2 = &_struct._4;
        ptr = &_struct._0;
        
        if(_struct._0 > _struct._4)
            ptr = ptr2;
        slot->quantity = *ptr;
    }
}

// Subtracts from a slot's quantity
void sub_800E0D4(ArticleSlot *slot, u32 amount) {
    if(slot->quantity != 0){
        if(slot->quantity <= amount)
            slot->quantity = 0;
        else
            slot->quantity -= amount;
    }
}
