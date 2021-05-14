#include "global.h"

enum Tools {
    TOOL_SICKLE_IRON,
    TOOL_SICKLE_COPPER,
    TOOL_SICKLE_SILVER,
    TOOL_SICKLE_GOLD,
    TOOL_SICKLE_MYSTRILE,
    TOOL_SICKLE_CURSED,
    TOOL_SICKLE_BLESSED,
    TOOL_SICKLE_MYTHIC,
    TOOL_HOE_IRON,
    TOOL_HOE_COPPER,
    TOOL_HOE_SILVER,
    TOOL_HOE_GOLD,
    TOOL_HOE_MYSTRILE,
    TOOL_HOE_CURSED,
    TOOL_HOE_BLESSED,
    TOOL_HOE_MYTHIC,
    TOOL_AXE_IRON,
    TOOL_AXE_COPPER,
    TOOL_AXE_SILVER,
    TOOL_AXE_GOLD,
    TOOL_AXE_MYSTRILE,
    TOOL_AXE_CURSED,
    TOOL_AXE_BLESSED,
    TOOL_AXE_MYTHIC,
    TOOL_HAMMER_IRON,
    TOOL_HAMMER_COPPER,
    TOOL_HAMMER_SILVER,
    TOOL_HAMMER_GOLD,
    TOOL_HAMMER_MYSTRILE,
    TOOL_HAMMER_CURSED,
    TOOL_HAMMER_BLESSED,
    TOOL_HAMMER_MYTHIC,
    TOOL_WATERING_CAN_IRON,
    TOOL_WATERING_CAN_COPPER,
    TOOL_WATERING_CAN_SILVER,
    TOOL_WATERING_CAN_GOLD,
    TOOL_WATERING_CAN_MYSTRILE,
    TOOL_WATERING_CAN_CURSED,
    TOOL_WATERING_CAN_BLESSED,
    TOOL_WATERING_CAN_MYTHIC,
    TOOL_FISHING_ROD_IRON,
    TOOL_FISHING_ROD_COPPER,
    TOOL_FISHING_ROD_SILVER,
    TOOL_FISHING_ROD_GOLD,
    TOOL_FISHING_ROD_MYSTRILE,
    TOOL_FISHING_ROD_CURSED,
    TOOL_FISHING_ROD_BLESSED,
    TOOL_FISHING_ROD_MYTHIC,
    TOOL_MIRACLE_POTION_COW,
    TOOL_MIRACLE_POTION_SHEEP,
    TOOL_SEEDS_TURNIP,
    TOOL_SEEDS_POTATO,
    TOOL_SEEDS_CUCUMBER,
    TOOL_SEEDS_STRAWBERRY,
    TOOL_SEEDS_CABBAGE,
    TOOL_SEEDS_TOMATO,
    TOOL_SEEDS_CORN,
    TOOL_SEEDS_ONION,
    TOOL_SEEDS_PUMPKIN,
    TOOL_SEEDS_PINEAPPLE,
    TOOL_SEEDS_EGGPLANT,
    TOOL_SEEDS_CARROT,
    TOOL_SEEDS_SWEET_POTATO,
    TOOL_SEEDS_SPINACH,
    TOOL_SEEDS_GREEN_PEPPER,
    TOOL_SEEDS_GRASS,
    TOOL_SEEDS_MOON_DROP,
    TOOL_SEEDS_PINK_CAT,
    TOOL_SEEDS_MAGIC,
    TOOL_SEEDS_TOY_FLOWER,
    TOOL_BRUSH,
    TOOL_MILKER,
    TOOL_CLIPPERS,
    TOOL_BELL,
    TOOL_ANIMAL_MEDICINE,
    TOOL_BLUE_FEATHER,
    TOOL_PEDOMETER,
    TOOL_TELEPORT_STONE,
    TOOL_GEM_GODDESS,
    TOOL_GEM_KAPPA,
    TOOL_GEM_TRUTH,
    TOOL_NONE,
    NUM_TOOLS = TOOL_NONE
};

enum Foods {
    FOOD_NONE = 171,
    NUM_FOODS = FOOD_NONE
};

enum Articles {
    ARTICLE_FLOWER_MOON_DROP,
    ARTICLE_FLOWER_PINK_CAT,
    ARTICLE_FLOWER_MAGIC_BLUE,
    ARTICLE_FLOWER_MAGIC_RED,
    ARTICLE_FLOWER_TOY,
    ARTICLE_WOOL_S,
    ARTICLE_WOOL_M,
    ARTICLE_WOOL_L,
    ARTICLE_WOOL_G,
    ARTICLE_WOOL_P,
    ARTICLE_WOOL_X,
    ARTICLE_YARN_S,
    ARTICLE_YARN_M,
    ARTICLE_YARN_L,
    ARTICLE_YARN_G,
    ARTICLE_YARN_P,
    ARTICLE_YARN_X,
    ARTICLE_ORE_JUNK,
    ARTICLE_ORE_COPPER,
    ARTICLE_ORE_SILVER,
    ARTICLE_ORE_GOLD,
    ARTICLE_ORE_MYSTRILE,
    ARTICLE_ORE_ORICHALC,
    ARTICLE_ORE_ADAMANTITE,
    ARTICLE_STONE_MOON,
    ARTICLE_SAND_ROSE,
    ARTICLE_DIAMOND_PINK,
    ARTICLE_ALEXANDRITE,
    ARTICLE_STONE_MYTHIC,
    ARTICLE_DIAMOND,
    ARTICLE_EMERALD,
    ARTICLE_RUBY,
    ARTICLE_TOPAZ,
    ARTICLE_PERIDOT,
    ARTICLE_FLUORITE,
    ARTICLE_AGATE,
    ARTICLE_AMETHYST,
    ARTICLE_JEWEL_GODDESS,
    ARTICLE_JEWEL_KAPPA,
    ARTICLE_JEWEL_TRUTH,
    ARTICLE_SUN_SPRING,
    ARTICLE_SUN_SUMMER,
    ARTICLE_SUN_AUTUMN,
    ARTICLE_SUN_WINTER,
    ARTICLE_BRACELET,
    ARTICLE_NECKLACE,
    ARTICLE_EARRINGS,
    ARTICLE_BROACH,
    ARTICLE_WEEDS,
    ARTICLE_STONES,
    ARTICLE_BRANCHES,
    ARTICLE_RECIPE_FRENCH_FRIES,
    ARTICLE_RECIPE_KETCHUP,
    ARTICLE_BALL,
    ARTICLE_PIRATE_TREASURE,
    ARTICLE_FOSSIL,
    ARTICLE_EMPTY_CAN,
    ARTICLE_BOOTS,
    ARTICLE_FISH_BONES,
    ARTICLE_KAREN_WINE,
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
    ARTICLE_BAND_AID,
    ARTICLE_BOOK,
    ARTICLE_PERFUME,
    ARTICLE_PHOTO,
    ARTICLE_PLANT_ENCYCLOPEDIA,
    ARTICLE_INVITATION,
    ARTICLE_DRESS,
    ARTICLE_FACIAL_PACK,
    ARTICLE_SKIN_LOTION,
    ARTICLE_SUNBLOCK,
    ARTICLE_LUMBER,
    ARTICLE_LUMBER_GOLDEN,
    ARTICLE_ANIMAL_FODDER,
    ARTICLE_CHICKEN_FEED,
    ARTICLE_CERTIFICATE,
    ARTICLE_FRISBEE,
    ARTICLE_NONE,
    NUM_ARTICLES = ARTICLE_NONE
};



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



typedef struct Tool {
    const u8 * name;
    u16 unk;
    const u8 * desc;
} Tool;

typedef struct Food {
    const u8* name;
    u8 unk_4:1; // Uses the drink animation when consumed
    s8 unk_5;   // Stamina recovered when consumed
    s8 unk_6;   // Fatigue recovered when consumed
    u16 unk_8;
    const u8* desc;
} Food;

typedef struct Article {
    const u8* name;
    u16 unk;
    const u8* desc;
} Article;



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



extern const u8 gText_BrokenTool[];
extern const u8 gText_NoExplanation[];
extern const u8 gText_BrokenFood[];
extern const u8 gText_BrokenArticle[];
extern const Tool gTools[];
extern const Food gFoods[];
extern const Article gArticles[];



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
