#include "global.h"

typedef enum Tool {
    TOOL_NONE = 81,
    NUM_TOOLS = TOOL_NONE
} Tool;

typedef enum Food {
    FOOD_NONE = 171,
    NUM_FOODS = FOOD_NONE
} Food;

typedef enum Article {
    ARTICLE_FLOWER_MOON_DROP,
    ARTICLE_FLOWER_PINK_CAT,
    ARTICLE_FLOWER_MAGIC_BLUE,
    ARTICLE_FLOWER_MAGIC_RED,
    ARTICLE_FLOWER_TOY,
    ARTICLE_JEWEL_GODDESS = 37,
    ARTICLE_JEWEL_KAPPA,
    ARTICLE_JEWEL_TRUTH,
    ARTICLE_KAREN_WINE = 59,
    ARTICLE_POPURI_MUD_BALL,
    ARTICLE_ANN_MUSIC_BOX,
    ARTICLE_MARY_GREAT_BOOK,
    ARTICLE_ELLI_PRESSED_FLOWER,
    ARTICLE_ALBUM_1,
    ARTICLE_ALBUM_2,
    ARTICLE_ALBUM_3,
    ARTICLE_ALBUM_4,
    ARTICLE_ALBUM_5,
    ARTICLE_ALBUM_6,
    ARTICLE_ALBUM_7,
    ARTICLE_ALBUM_8,
    ARTICLE_ALBUM_9,
    ARTICLE_ALBUM_10,
    ARTICLE_ALBUM_11,
    ARTICLE_ALBUM_12,
    ARTICLE_ALBUM_13,
    ARTICLE_ALBUM_14,
    ARTICLE_ALBUM_15,
    ARTICLE_FRISBEE = 94,
    ARTICLE_NONE,
    NUM_ARTICLES = ARTICLE_NONE
} Article;



typedef struct __attribute__((__packed__)) ToolSlot {
    u8 tool;
    u8 quantity;
} ToolSlot;

typedef struct FoodSlot {
    u8 food;
    s8 unk_0x1;
    s8 unk_0x2;
    u8 quantity;
} FoodSlot;

typedef struct __attribute__((__packed__)) ArticleSlot {
    u8 article;
    u8 quantity;
} ArticleSlot;



typedef struct ToolData {
    u8 * name;
    u16 unk;
    u8 * desc;
} ToolData;

typedef struct FoodData {
    u8* name;
    u8 unk_0x4:1;
    s8 unk_0x5;
    s8 unk_0x6;
    u16 unk_0x8;
    u8* desc;
} FoodData;

typedef struct ArticleData {
    u8* name;
    u16 unk;
    u8* desc;
} ArticleData;



typedef struct ToolChest{
    ToolSlot slots[64];
}ToolChest;

typedef struct Fridge {
    FoodSlot slots[64];
} Fridge;

typedef struct Shelf {
    ArticleSlot slots[64];
} Shelf;

typedef struct RecordPlayer {
    u8 unk:1;
    u8 album:4;
} RecordPlayer;



extern u8 gUnk_80E9620[];
extern u8 gUnk_80E962C[];
extern u8 gUnk_80E963C[];
extern u8 gUnk_80E9648[];
extern ToolData gUnk_80EAB0C[];
extern FoodData gUnk_80EDCD8[];
extern ArticleData gUnk_80EFED4[];



// Initializes the tool chest
ToolChest * sub_800B2EC(ToolChest *chest);
// Initializes the fridge
Fridge * sub_800B660(Fridge *fridge);
// Initializes the shelf
Shelf * sub_800B8E4(Shelf *shelf);
// Initializes the record player
RecordPlayer * sub_800BB60(RecordPlayer *player);

// Returns a slot's tool
u32 sub_800DB30(ToolSlot *slot);
// Returns a slot's tool
u8 sub_800DC10(ToolSlot *slot);
// Returns whether a slot is empty or not
bool8 sub_800DC34(ToolSlot *slot);
// Returns a slot's quantity
u32 sub_800DC48(ToolSlot *slot);

// Returns a slot's food
u32 sub_800DCB4(FoodSlot *slot);
// Initializes a food slot
FoodSlot * sub_800DE68(FoodSlot *slot);
// Initializes a food slot
FoodSlot * sub_800DEB8(FoodSlot *slot1, FoodSlot *slot2);
// Returns whether a slot is empty or not
u8 sub_800DEDC(FoodSlot *slot);
// Returns a slot's quantity
u32 sub_800DEF0(FoodSlot *slot);

// Sets a slot's article
void sub_800DF50(ArticleSlot *slot, u8 article);
// Returns a slot's article
s32 sub_800DF54(ArticleSlot *slot);
// Initializes an article slot
ArticleSlot * sub_800E010(ArticleSlot *slot);
// Initializes a tool slot
ArticleSlot * sub_800E028(ArticleSlot *slot, u8 article, u32 amount);
// Returns a slot's article
u32 sub_800E058(ArticleSlot *slot);
// Returns whether a slot is empty or not
bool8 sub_800E07C(ArticleSlot *slot);
// Returns a slot's quantity
u32 sub_800E090(ArticleSlot *slot);
