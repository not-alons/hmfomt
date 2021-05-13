#include "global.h"

typedef struct RecordPlayer {
    u8 unk:1;
    u8 album:4;
} RecordPlayer;

extern u8 gUnk_80E9605[];

// Initializes the record player
void sub_800BB60(RecordPlayer *player) {
    player->unk = 0;
    player->album = 0;
}

// Returns an unkown flag
bool8 sub_800BB74(RecordPlayer *player) {
    return player->unk;
}

// Returns an unkown value from a table
u32 sub_800BB7C(RecordPlayer *player){
    if(!sub_800BB74(player))
        return 199;
    else
        return gUnk_80E9605[player->album];
}

typedef struct __attribute__((__packed__)) ArticleSlot {
    u8 article;
    u8 quantity;
} ArticleSlot;

// Sets a slot's article
void sub_800DF50(ArticleSlot *slot, u8 article);
// Returns a slot's article
s32 sub_800DF54(ArticleSlot *slot);
// Initializes an article slot
ArticleSlot * sub_800E010(ArticleSlot *slot);
// Initializes a tool slot
ArticleSlot * sub_800E028(ArticleSlot *slot, u8 article, u32 amount);

ArticleSlot * sub_800BBA4(ArticleSlot * slot, RecordPlayer *player) {
    ArticleSlot sp;
    if(!sub_800BB74(player)){
        sub_800E010(slot);
    }else{
        player->unk = 0;
        sub_800DF50(&sp, player->album + 0x40);
        sub_800E028(slot, sp.article, 1);
    }
    return slot;
}

ArticleSlot * sub_800BBF0(ArticleSlot * slot1, RecordPlayer *player, ArticleSlot * slot2){
    ArticleSlot sp;
    u8 temp;
    switch(sub_800DF54(slot2)){
        case 64 ... 78:
            player->unk = 1;
            temp = player->album;
            player->album = sub_800DF54(slot2) - 64;

            sub_800DF50(&sp, temp + 64);
            sub_800E028(slot1, sp.article, 1);
            return slot1;

        default:
            sub_800E010(slot1);
            return slot1;
    }
}
