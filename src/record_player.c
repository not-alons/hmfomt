#include "inventory.h"

const u8 unk_80E9605[] = {
    18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32
};

// Initializes the record player
RecordPlayer * sub_800BB60(RecordPlayer *player) {
    player->unk = FALSE;
    player->album = 0;
    return player;
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
        return unk_80E9605[player->album];
}

ArticleSlot * sub_800BBA4(ArticleSlot * slot, RecordPlayer *player) {
    ArticleSlot sp;
    if(!sub_800BB74(player)){
        sub_800E010(slot);
    }else{
        player->unk = FALSE;
        sub_800DF50(&sp, player->album + ARTICLE_ALBUM_1);
        sub_800E028(slot, sp.article, 1);
    }
    return slot;
}

ArticleSlot * sub_800BBF0(ArticleSlot * slot1, RecordPlayer *player, ArticleSlot * slot2){
    ArticleSlot sp;
    u8 temp;

    switch(sub_800DF54(slot2)) {
        case ARTICLE_ALBUM_1 ... ARTICLE_ALBUM_15:
            player->unk = TRUE;
            temp = player->album;
            player->album = sub_800DF54(slot2) - ARTICLE_ALBUM_1;

            sub_800DF50(&sp, temp + ARTICLE_ALBUM_1);
            sub_800E028(slot1, sp.article, 1);
            return slot1;

        default:
            sub_800E010(slot1);
            return slot1;
    }
}
