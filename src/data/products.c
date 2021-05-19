#include "inventory.h"

const Product gProducts[] = {
    [PRODUCT_TURNIP] = {
        .price = 60,
        .type  = TYPE_FOOD,
        .item  = FOOD_TURNIP
    },

    [PRODUCT_POTATO] = {
        .price = 80,
        .type  = TYPE_FOOD,
        .item  = FOOD_POTATO
    },

    [PRODUCT_CUCUMBER] = {
        .price = 60,
        .type  = TYPE_FOOD,
        .item  = FOOD_CUCUMBER
    },

    [PRODUCT_STRAWBERRY] = {
        .price = 250,
        .type  = TYPE_FOOD,
        .item  = FOOD_CABBAGE
    },

    [PRODUCT_CABBAGE] = {
        .price = 30,
        .type  = TYPE_FOOD,
        .item  = FOOD_STRAWBERRY
    },

    [PRODUCT_TOMATO] = {
        .price = 60,
        .type  = TYPE_FOOD,
        .item  = FOOD_TOMATO
    },

    [PRODUCT_CORN] = {
        .price = 100,
        .type  = TYPE_FOOD,
        .item  = FOOD_CORN
    },

    [PRODUCT_ONION] = {
        .price = 80,
        .type  = TYPE_FOOD,
        .item  = FOOD_ONION
    },

    [PRODUCT_PUMPKIN] = {
        .price = 500,
        .type  = TYPE_FOOD,
        .item  = FOOD_PINEAPPLE
    },

    [PRODUCT_PINEAPPLE] = {
        .price = 250,
        .type  = TYPE_FOOD,
        .item  = FOOD_PUMPKIN
    },

    [PRODUCT_EGGPLANT] = {
        .price = 80,
        .type  = TYPE_FOOD,
        .item  = FOOD_EGGPLANT
    },

    [PRODUCT_CARROT] = {
        .price = 120,
        .type  = TYPE_FOOD,
        .item  = FOOD_CARROT
    },

    [PRODUCT_SWEET_POTATO] = {
        .price = 120,
        .type  = TYPE_FOOD,
        .item  = FOOD_SWEET_POTATO
    },

    [PRODUCT_SPINACH] = {
        .price = 40,
        .type  = TYPE_FOOD,
        .item  = FOOD_GREEN_PEPPER
    },

    [PRODUCT_GREEN_PEPPER] = {
        .price = 80,
        .type  = TYPE_FOOD,
        .item  = FOOD_SPINACH
    },

    [PRODUCT_EGG] = {
        .price = 50,
        .type  = TYPE_FOOD,
        .item  = FOOD_EGG
    },

    [PRODUCT_EGG_GOOD] = {
        .price = 60,
        .type  = TYPE_FOOD,
        .item  = FOOD_EGG_GOOD
    },

    [PRODUCT_EGG_HIGH] = {
        .price = 80,
        .type  = TYPE_FOOD,
        .item  = FOOD_EGG_HIGH
    },

    [PRODUCT_EGG_GOLD] = {
        .price = 100,
        .type  = TYPE_FOOD,
        .item  = FOOD_EGG_GOLD
    },

    [PRODUCT_EGG_P] = {
        .price = 180,
        .type  = TYPE_FOOD,
        .item  = FOOD_EGG_P
    },

    [PRODUCT_EGG_X] = {
        .price = 350,
        .type  = TYPE_FOOD,
        .item  = FOOD_EGG_X
    },

    [PRODUCT_EGG_SPA_BOILED] = {
        .price = 80,
        .type  = TYPE_FOOD,
        .item  = FOOD_EGG_SPA_BOILED
    },

    [PRODUCT_MAYONNAISE_S] = {
        .price = 100,
        .type  = TYPE_FOOD,
        .item  = FOOD_MAYONNAISE_S
    },

    [PRODUCT_MAYONNAISE_M] = {
        .price = 150,
        .type  = TYPE_FOOD,
        .item  = FOOD_MAYONNAISE_M
    },

    [PRODUCT_MAYONNAISE_L] = {
        .price = 200,
        .type  = TYPE_FOOD,
        .item  = FOOD_MAYONNAISE_L
    },

    [PRODUCT_MAYONNAISE_G] = {
        .price = 300,
        .type  = TYPE_FOOD,
        .item  = FOOD_MAYONNAISE_G
    },

    [PRODUCT_MAYONNAISE_P] = {
        .price = 450,
        .type  = TYPE_FOOD,
        .item  = FOOD_MAYONNAISE_P
    },

    [PRODUCT_MAYONNAISE_X] = {
        .price = 800,
        .type  = TYPE_FOOD,
        .item  = FOOD_MAYONNAISE_X
    },

    [PRODUCT_MILK_S] = {
        .price = 100,
        .type  = TYPE_FOOD,
        .item  = FOOD_MILK_S
    },

    [PRODUCT_MILK_M] = {
        .price = 150,
        .type  = TYPE_FOOD,
        .item  = FOOD_MILK_M
    },

    [PRODUCT_MILK_L] = {
        .price = 200,
        .type  = TYPE_FOOD,
        .item  = FOOD_MILK_L
    },

    [PRODUCT_MILK_G] = {
        .price = 300,
        .type  = TYPE_FOOD,
        .item  = FOOD_MILK_G
    },

    [PRODUCT_MILK_P] = {
        .price = 500,
        .type  = TYPE_FOOD,
        .item  = FOOD_MILK_P
    },

    [PRODUCT_MILK_X] = {
        .price = 800,
        .type  = TYPE_FOOD,
        .item  = FOOD_MILK_X
    },

    [PRODUCT_CHEESE_S] = {
        .price = 300,
        .type  = TYPE_FOOD,
        .item  = FOOD_CHEESE_S
    },

    [PRODUCT_CHEESE_M] = {
        .price = 400,
        .type  = TYPE_FOOD,
        .item  = FOOD_CHEESE_M
    },

    [PRODUCT_CHEESE_L] = {
        .price = 500,
        .type  = TYPE_FOOD,
        .item  = FOOD_CHEESE_L
    },

    [PRODUCT_CHEESE_G] = {
        .price = 600,
        .type  = TYPE_FOOD,
        .item  = FOOD_CHEESE_G
    },

    [PRODUCT_CHEESE_P] = {
        .price = 750,
        .type  = TYPE_FOOD,
        .item  = FOOD_CHEESE_P
    },

    [PRODUCT_CHEESE_X] = {
        .price = 1500,
        .type  = TYPE_FOOD,
        .item  = FOOD_CHEESE_X
    },

    [PRODUCT_APPLE] = {
        .price = 50,
        .type  = TYPE_FOOD,
        .item  = FOOD_APPLE
    },

    [PRODUCT_APPLE_SUGDW] = {
        .price = 50,
        .type  = TYPE_FOOD,
        .item  = FOOD_APPLE_SUGDW
    },

    [PRODUCT_APPLE_HMSGB] = {
        .price = 50,
        .type  = TYPE_FOOD,
        .item  = FOOD_APPLE_HMSGB
    },

    [PRODUCT_APPLE_AEPFE] = {
        .price = 50,
        .type  = TYPE_FOOD,
        .item  = FOOD_APPLE_AEPFE
    },

    [PRODUCT_HONEY] = {
        .price = 50,
        .type  = TYPE_FOOD,
        .item  = FOOD_HONEY
    },

    [PRODUCT_BAMBOO_SHOOT] = {
        .price = 50,
        .type  = TYPE_FOOD,
        .item  = FOOD_BAMBOO_SHOOT
    },

    [PRODUCT_WILD_GRAPES] = {
        .price = 50,
        .type  = TYPE_FOOD,
        .item  = FOOD_WILD_GRAPES
    },

    [PRODUCT_MUSHROOM] = {
        .price = 70,
        .type  = TYPE_FOOD,
        .item  = FOOD_MUSHROOM
    },

    [PRODUCT_MUSHROOM_POISONOUS] = {
        .price = 100,
        .type  = TYPE_FOOD,
        .item  = FOOD_MUSHROOM_POISONOUS
    },

    [PRODUCT_TRUFFLE] = {
        .price = 500,
        .type  = TYPE_FOOD,
        .item  = FOOD_TRUFFLE
    },

    [PRODUCT_GRASS_BLUE] = {
        .price = 100,
        .type  = TYPE_FOOD,
        .item  = FOOD_GRASS_BLUE
    },

    [PRODUCT_GRASS_GREEN] = {
        .price = 100,
        .type  = TYPE_FOOD,
        .item  = FOOD_GRASS_GREEN
    },

    [PRODUCT_GRASS_RED] = {
        .price = 110,
        .type  = TYPE_FOOD,
        .item  = FOOD_GRASS_RED
    },

    [PRODUCT_GRASS_YELLOW] = {
        .price = 120,
        .type  = TYPE_FOOD,
        .item  = FOOD_GRASS_YELLOW
    },

    [PRODUCT_GRASS_ORANGE] = {
        .price = 100,
        .type  = TYPE_FOOD,
        .item  = FOOD_GRASS_ORANGE
    },

    [PRODUCT_GRASS_PURPLE] = {
        .price = 120,
        .type  = TYPE_FOOD,
        .item  = FOOD_GRASS_PURPLE
    },

    [PRODUCT_GRASS_INDIGO] = {
        .price = 100,
        .type  = TYPE_FOOD,
        .item  = FOOD_GRASS_INDIGO
    },

    [PRODUCT_GRASS_BLACK] = {
        .price = 10,
        .type  = TYPE_FOOD,
        .item  = FOOD_GRASS_BLACK
    },

    [PRODUCT_GRASS_WHITE] = {
        .price = 150,
        .type  = TYPE_FOOD,
        .item  = FOOD_GRASS_WHITE
    },

    [PRODUCT_CHOCOLATE] = {
        .price = 100,
        .type  = TYPE_FOOD,
        .item  = FOOD_CHOCOLATE
    },

    [PRODUCT_LEAVES_RELAXATION] = {
        .price = 1000,
        .type  = TYPE_FOOD,
        .item  = FOOD_LEAVES_RELAXATION
    },

    [PRODUCT_FISH_SMALL] = {
        .price = 50,
        .type  = TYPE_FOOD,
        .item  = FOOD_FISH_SMALL
    },

    [PRODUCT_FISH_MEDIUM] = {
        .price = 120,
        .type  = TYPE_FOOD,
        .item  = FOOD_FISH_MEDIUM
    },

    [PRODUCT_FISH_LARGE] = {
        .price = 200,
        .type  = TYPE_FOOD,
        .item  = FOOD_FISH_LARGE
    },

    [PRODUCT_PIRATE_TREASURE] = {
        .price = 10000,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_PIRATE_TREASURE
    },

    [PRODUCT_FOSSIL] = {
        .price = 5000,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_FOSSIL
    },

    [PRODUCT_FLOWER_MAGIC_RED] = {
        .price = 200,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_FLOWER_MAGIC_RED
    },

    [PRODUCT_WOOL_S] = {
        .price = 100,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_WOOL_S
    },

    [PRODUCT_WOOL_M] = {
        .price = 400,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_WOOL_M
    },

    [PRODUCT_WOOL_L] = {
        .price = 500,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_WOOL_L
    },

    [PRODUCT_WOOL_G] = {
        .price = 600,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_WOOL_G
    },

    [PRODUCT_WOOL_P] = {
        .price = 1000,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_WOOL_P
    },

    [PRODUCT_WOOL_X] = {
        .price = 2000,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_WOOL_X
    },

    [PRODUCT_YARN_S] = {
        .price = 300,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_YARN_S
    },

    [PRODUCT_YARN_M] = {
        .price = 700,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_YARN_M
    },

    [PRODUCT_YARN_L] = {
        .price = 800,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_YARN_L
    },

    [PRODUCT_YARN_G] = {
        .price = 1000,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_YARN_G
    },

    [PRODUCT_YARN_P] = {
        .price = 1500,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_YARN_P
    },

    [PRODUCT_YARN_X] = {
        .price = 4000,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_YARN_X
    },

    [PRODUCT_BRACELET] = {
        .price = 2000,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_BRACELET
    },

    [PRODUCT_NECKLACE] = {
        .price = 2000,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_NECKLACE
    },

    [PRODUCT_EARRINGS] = {
        .price = 2000,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_EARRINGS
    },

    [PRODUCT_BROACH] = {
        .price = 2000,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_BROACH
    },

    [PRODUCT_ORE_JUNK] = {
        .price = 1,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_ORE_JUNK
    },

    [PRODUCT_ORE_COPPER] = {
        .price = 15,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_ORE_COPPER
    },

    [PRODUCT_ORE_SILVER] = {
        .price = 20,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_ORE_SILVER
    },

    [PRODUCT_ORE_GOLD] = {
        .price = 25,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_ORE_GOLD
    },

    [PRODUCT_ORE_MYSTRILE] = {
        .price = 40,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_ORE_MYSTRILE
    },

    [PRODUCT_ORE_ORICHALC] = {
        .price = 50,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_ORE_ORICHALC
    },

    [PRODUCT_ORE_ADAMANTITE] = {
        .price = 50,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_ORE_ADAMANTITE
    },

    [PRODUCT_STONE_MOON] = {
        .price = 20000,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_STONE_MYTHIC
    },

    [PRODUCT_SAND_ROSE] = {
        .price = 10000,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_DIAMOND_PINK
    },

    [PRODUCT_DIAMOND_PINK] = {
        .price = 10000,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_ALEXANDRITE
    },

    [PRODUCT_ALEXANDRITE] = {
        .price = 55,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_STONE_MOON
    },

    [PRODUCT_STONE_MYTHIC] = {
        .price = 60,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_SAND_ROSE
    },

    [PRODUCT_DIAMOND] = {
        .price = 100,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_DIAMOND
    },

    [PRODUCT_EMERALD] = {
        .price = 80,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_EMERALD
    },

    [PRODUCT_RUBY] = {
        .price = 75,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_RUBY
    },

    [PRODUCT_TOPAZ] = {
        .price = 70,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_TOPAZ
    },

    [PRODUCT_PERIDOT] = {
        .price = 68,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_PERIDOT
    },

    [PRODUCT_FLUORITE] = {
        .price = 65,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_FLUORITE
    },

    [PRODUCT_AGATE] = {
        .price = 62,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_AGATE
    },

    [PRODUCT_AMETHYST] = {
        .price = 60,
        .type  = TYPE_ARTICLE,
        .item  = ARTICLE_AMETHYST
    }
};
