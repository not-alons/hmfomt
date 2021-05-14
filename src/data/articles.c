#include "inventory.h"

const u8 gText_MoonDropGrassName[]       = "Moon Drop Grass";
const u8 gText_MoonDropGrassDesc[]       = "Moon Drop Grass\r\nFlowers in Spring.\r\nCannot be shipped.";
const u8 gText_PinkCatGrassName[]        = "Pink Cat Grass";
const u8 gText_PinkCatGrassDesc[]        = "Pink Cat Grass\r\nFlowers in Summer.\r\nCannot be shipped.";
const u8 gText_BlueMagicGrassName[]      = "Blue Magic Grass";
const u8 gText_BlueMagicGrassDesc[]      = "Blue Magic Grass\r\nFlowers in Fall.\r\nCannot be shipped.";
const u8 gText_RedMagicGrassName[]       = "Red Magic Grass";
const u8 gText_RedMagicGrassDesc[]       = "Red Magic Grass\r\nFlowers in Fall.\r\nCannot be shipped.";
const u8 gText_ToyFlowerName[]           = "Toy Flower";
const u8 gText_ToyFlowerDesc[]           = "Toy Flower\r\nFlowers in Spring.\r\nCannot be shipped.";
const u8 gText_WoolSName[]               = "Wool (S)";
const u8 gText_WoolSDesc[]               = "Wool (S)\r\nShorn from Sheep.\r\n";
const u8 gText_WoolMName[]               = "Wool (M)";
const u8 gText_WoolMDesc[]               = "Wool (M)\r\nShorn from Sheep.\r\n";
const u8 gText_WoolLName[]               = "Wool (L)";
const u8 gText_WoolLDesc[]               = "Wool (L)\r\nShorn from Sheep.\r\n";
const u8 gText_WoolGName[]               = "Wool (G)";
const u8 gText_WoolGDesc[]               = "Wool (G)\r\nShorn from Sheep.\r\n";
const u8 gText_WoolPName[]               = "Wool (P)";
const u8 gText_WoolPDesc[]               = "Wool (P)\r\nShorn from Sheep.\r\n";
const u8 gText_YarnSName[]               = "Yarn (S)";
const u8 gText_YarnSDesc[]               = "Yarn (S)\r\nMade by putting Wool \r\nin a Yarn Maker.";
const u8 gText_YarnMName[]               = "Yarn (M)";
const u8 gText_YarnMDesc[]               = "Yarn (M)\r\nMade by putting Wool \r\nin a Yarn Maker.";
const u8 gText_YarnLName[]               = "Yarn (L)";
const u8 gText_YarnLDesc[]               = "Yarn (L)\r\nMade by putting Wool \r\nin a Yarn Maker.";
const u8 gText_YarnGName[]               = "Yarn (G)";
const u8 gText_YarnGDesc[]               = "Yarn (G)\r\nMade by putting Wool \r\nin a Yarn Maker.";
const u8 gText_YarnPName[]               = "Yarn (P)";
const u8 gText_YarnPDesc[]               = "Yarn (P)\r\nMade by putting Wool \r\nin a Yarn Maker.";
const u8 gText_YarnXName[]               = "Yarn (X)";
const u8 gText_YarnXDesc[]               = "Yarn (X)\r\nMade by putting Wool \r\nin a Yarn Maker.";
const u8 gText_JunkOreName[]             = "Junk Ore";
const u8 gText_JunkOreDesc[]             = "Junk Ore\r\nFound in mines. Not very\r\nvaluable so it's cheap.";
const u8 gText_CopperName[]              = "Copper";
const u8 gText_CopperDesc[]              = "Copper\r\nFound in mines. Used to \r\nupgrade Tools.";
const u8 gText_SilverName[]              = "Silver";
const u8 gText_SilverDesc[]              = "Silver\r\nFound in mines. Used to \r\nupgrade Tools.";
const u8 gText_GoldName[]                = "Gold";
const u8 gText_GoldDesc[]                = "Gold\r\nFound in mines. Used to \r\nupgrade Tools.";
const u8 gText_MystrileName[]            = "Mystrile";
const u8 gText_MystrileDesc[]            = "Mystrile\r\nFound in mines. Used to \r\nupgrade Tools.";
const u8 gText_OrichalcName[]            = "Orichalc";
const u8 gText_OrichalcDesc[]            = "Orichalc\r\nFound in mines. Used to \r\nmake jewelry.";
const u8 gText_AdamantiteName[]          = "Adamantite";
const u8 gText_AdamantiteDesc[]          = "Adamantite\r\nFound in mines. Used to\r\ncreate Makers.";
const u8 gText_MoonStoneName[]           = "Moon Stone";
const u8 gText_MoonStoneDesc[]           = "Moon Stone\r\nFound in mines, and \r\nrelatively valuable.";
const u8 gText_SandRoseName[]            = "Sand Rose";
const u8 gText_SandRoseDesc[]            = "Sand Rose\r\nFound in mines, and \r\nrelatively valuable.";
const u8 gText_PinkDiamondName[]         = "Pink Diamond";
const u8 gText_PinkDiamondDesc[]         = "Pink Diamond\r\nFound in mines. Very \r\nrare and valuable.";
const u8 gText_AlexandriteName[]         = "Alexandrite";
const u8 gText_AlexandriteDesc[]         = "Alexandrite\r\nFound in mines. Very \r\nrare and valuable.";
const u8 gText_MythicStoneName[]         = "Mythic Stone";
const u8 gText_MythicStoneDesc[]         = "Mythic Stone\r\nFound rarely in mines. \r\nUsed to upgrade Tools.";
const u8 gText_DiamondName[]             = "Diamond";
const u8 gText_DiamondDesc[]             = "Diamond\r\nFound in mines. \r\nRare and valuable.";
const u8 gText_EmeraldName[]             = "Emerald";
const u8 gText_EmeraldDesc[]             = "Emerald\r\nFound in mines. \r\nRare and valuable.";
const u8 gText_RubyName[]                = "Ruby";
const u8 gText_RubyDesc[]                = "Ruby\r\nFound in mines, and \r\nrelatively valuable.";
const u8 gText_TopazName[]               = "Topaz";
const u8 gText_TopazDesc[]               = "Ruby\r\nTopaz in mines, and \r\nrelatively valuable.";
const u8 gText_PeridotName[]             = "Peridot";
const u8 gText_PeridotDesc[]             = "Peridot\r\nFound in mines, and \r\nrelatively valuable.";
const u8 gText_FluoriteName[]            = "Fluorite";
const u8 gText_FluoriteDesc[]            = "Fluorite\r\nFound in mines, and \r\nrelatively valuable.";
const u8 gText_AgateName[]               = "Agate";
const u8 gText_AgateDesc[]               = "Agate\r\nFound in mines, and \r\nrelatively valuable.";
const u8 gText_AmethystName[]            = "Amethyst";
const u8 gText_AmethystDesc[]            = "Amethyst\r\nFound in mines, and \r\nrelatively valuable.";
const u8 gText_HarvestGoddessJewelName[] = "Harvest Goddess Jewel";
const u8 gText_HarvestGoddessJewelDesc[] = "Harvest Goddess Jewel\r\nFound in mines. Collect 9\r\nand see what happens.";
const u8 gText_KappaJewelName[]          = "Kappa Jewel";
const u8 gText_KappaJewelDesc[]          = "Kappa Jewel\r\nFound in mines. Collect 9\r\nand see what happens.";
const u8 gText_JewelofTruthName[]        = "Jewel of Truth";
const u8 gText_JewelofTruthDesc[]        = "Jewel of Truth\r\nCollect 9 and see what\r\nhappens.";
const u8 gText_TheSpringSunName[]        = "The Spring Sun";
const u8 gText_TheSpringSunDesc[]        = "Unused Item\r\nYou can cook it.\r\n";
const u8 gText_TheSummerSunName[]        = "The Summer Sun";
const u8 gText_TheAutumnSunName[]        = "The Autumn Sun";
const u8 gText_TheWinterSunName[]        = "The Winter Sun";
const u8 gText_BraceletName[]            = "Bracelet";
const u8 gText_BraceletDesc[]            = "Bracelet\r\nJewelry that the blacksmith\r\ncan make.";
const u8 gText_NecklaceName[]            = "Necklace";
const u8 gText_NecklaceDesc[]            = "Necklace\r\nJewelry that the blacksmith\r\ncan make.";
const u8 gText_EarringsName[]            = "Earrings";
const u8 gText_EarringsDesc[]            = "Earrings\r\nJewelry that the blacksmith\r\ncan make.";
const u8 gText_BroachName[]              = "Broach";
const u8 gText_BroachDesc[]              = "Broach\r\nJewelry that the blacksmith\r\ncan make.";
const u8 gText_WeedsName[]               = "Weeds";
const u8 gText_WeedsDesc[]               = "Weeds\r\nGrow in Spring and Fall.\r\nShould be removed.";
const u8 gText_StonesName[]              = "Stones";
const u8 gText_StonesDesc[]              = "Stones\r\nCan be smashed with Hammer.\r\nor placed on tillable land.";
const u8 gText_BranchesName[]            = "Branches";
const u8 gText_BranchesDesc[]            = "Branches\r\nMaterial for Lumber. Can be\r\nplaced on tillable land.";
const u8 gText_LithographName[]          = "Lithograph";
const u8 gText_LithographDesc[]          = "Recipe for French Fries\r\nIngredients: Potato, Oil\r\nUtensils: Frying Pan, Knife";
const u8 gText_MessageinaBottleName[]    = "Message in a Bottle";
const u8 gText_MessageinaBottleDesc[]    = "Recipe for Ketchup\r\nTomato, Onion, Sugar, Salt,\r\nVinegar and Mixer.";
const u8 gText_BallName[]                = "Ball";
const u8 gText_BallDesc[]                = "Ball\r\nA dog toy.\r\n";
const u8 gText_PirateTreasureName[]      = "Pirate Treasure";
const u8 gText_PirateTreasureDesc[]      = "Pirate Treasure\r\nVery valuable Pirate \r\nTreasure from long ago.";
const u8 gText_FossilofFishName[]        = "Fossil of Fish";
const u8 gText_FossilofFishDesc[]        = "Fossil of Ancient Fish\r\nA very valuable fossil.\r\n";
const u8 gText_EmptyCanName[]            = "Empty Can";
const u8 gText_EmptyCanDesc[]            = "Empty Can\r\nGarbage.\r\n";
const u8 gText_BootsName[]               = "Boots";
const u8 gText_BootsDesc[]               = "Boots\r\nGarbage\r\n";
const u8 gText_FishBonesName[]           = "Fish Bones";
const u8 gText_FishBonesDesc[]           = "Fish Bones\r\nGarbage\r\n";
const u8 gText_KarenWineName[]           = "Karen's Wine";
const u8 gText_KarenWineDesc[]           = "Karen's Wine\r\nWine received from Karen.\r\nThe label has her name.";
const u8 gText_PopuriMudBallName[]       = "Popuri's Mud Ball";
const u8 gText_PopuriMudBallDesc[]       = "Popuri's Mud Ball\r\nA ball of mud made by \r\nPopuri.";
const u8 gText_AnnMusicBoxName[]         = "Ann's Music Box";
const u8 gText_AnnMusicBoxDesc[]         = "A Music Box received from \r\nAnn. It's broken, so it \r\nplays no music.";
const u8 gText_MaryGreatBookName[]       = "Mary's Great Book";
const u8 gText_MaryGreatBookDesc[]       = "Mary's Great Book\r\nA fabulous novel received\r\nfrom Mary.";
const u8 gText_ElliPressedFlwrName[]     = "Elli's Pressed Flwr";
const u8 gText_ElliPressedFlwrDesc[]     = "Elli's Pressed Flower\r\nA pressed flower made by\r\nElli. Quite pretty.";
const u8 gText_Album1Name[]              = "Album 1";
const u8 gText_Album1Desc[]              = "Album 1\r\nSpring song for SFC Map\r\n";
const u8 gText_Album2Name[]              = "Album 2";
const u8 gText_Album2Desc[]              = "Album 2\r\nSong for SFC Event\r\n";
const u8 gText_Album3Name[]              = "Album 3";
const u8 gText_Album3Desc[]              = "Album 3\r\nFall song for N64 Map\r\n";
const u8 gText_Album4Name[]              = "Album 4";
const u8 gText_Album4Desc[]              = "Album 4\r\nN64 opening song \r\n";
const u8 gText_Album5Name[]              = "Album 5";
const u8 gText_Album5Desc[]              = "Album 5\r\nPS girl opening song \r\n";
const u8 gText_Album6Name[]              = "Album 6";
const u8 gText_Album6Desc[]              = "Album 6\r\nPS girl love event song \r\n";
const u8 gText_Album7Name[]              = "Album 7";
const u8 gText_Album7Desc[]              = "Album 7\r\nSummer song for PS2 map\r\n";
const u8 gText_Album8Name[]              = "Album 8";
const u8 gText_Album8Desc[]              = "Album 8\r\nFall song for PS2 forest\r\n";
const u8 gText_Album9Name[]              = "Album 9";
const u8 gText_Album9Desc[]              = "Album 9\r\nGC farm Fall/Winter song\r\n";
const u8 gText_Album10Name[]             = "Album 10";
const u8 gText_Album10Desc[]             = "Album 10\r\nGC bar night song\r\n";
const u8 gText_Album11Name[]             = "Album 11";
const u8 gText_Album11Desc[]             = "Unused item\r\nReceived after 90 straight\r\nRock-Papers-Scissors wins.";
const u8 gText_Album12Name[]             = "Album 12";
const u8 gText_Album12Desc[]             = "Unused item\r\nReceived after 80 straight\r\nRock-Papers-Scissors wins.";
const u8 gText_Album13Name[]             = "Album 13";
const u8 gText_Album13Desc[]             = "Unused item\r\nReceived after 70 straight\r\nRock-Papers-Scissors wins.";
const u8 gText_Album14Name[]             = "Album 14";
const u8 gText_Album14Desc[]             = "Unused item\r\nReceived after 60 straight\r\nRock-Papers-Scissors wins.";
const u8 gText_Album15Name[]             = "Album 15";
const u8 gText_Album15Desc[]             = "Unused item\r\nReceived after 50 straight\r\nRock-Papers-Scissors wins.";
const u8 gText_BandAidName[]             = "Band-Aid";
const u8 gText_BandAidDesc[]             = "Band-Aid\r\nAlways a good idea to\r\nkeep one around!";
const u8 gText_BookName[]                = "Book";
const u8 gText_BookDesc[]                = "Guess if the number is small\r\nor large. Win 100 times and\r\nget this book from H.G.";
const u8 gText_PerfumeName[]             = "Perfume";
const u8 gText_PerfumeDesc[]             = "Perfume\r\nThis elegant perfume is a \r\nperfect gift for women.";
const u8 gText_PhotoName[]               = "Photo";
const u8 gText_PhotoDesc[]               = "Photo\r\nA photo fallen next to \r\nCliff. A family picture?";
const u8 gText_PlantEncyclopediaName[]   = "Plant Encyclopedia";
const u8 gText_PlantEncyclopediaDesc[]   = "Plant Encyclopedia\r\nThis book from the Library\r\ncontains every plant ever.";
const u8 gText_InvitationName[]          = "Invitation";
const u8 gText_InvitationDesc[]          = "Invitation\r\nAn invitation to the Harvest\r\nSprites' Tea party.";
const u8 gText_DressName[]               = "Dress";
const u8 gText_DressDesc[]               = "Dress\r\nSure to please girls, and\r\nwrapped in a pretty box.";
const u8 gText_FacialPackName[]          = "Facial Pack";
const u8 gText_FacialPackDesc[]          = "Facial Pack\r\nMakes skin silky smooth,\r\nbut looks silly when on.";
const u8 gText_SkinLotionName[]          = "Skin Lotion";
const u8 gText_SkinLotionDesc[]          = "Skin Lotion \r\nThis special lotion is great\r\nfor skin. Girls like it.";
const u8 gText_SunblockName[]            = "Sunblock";
const u8 gText_SunblockDesc[]            = "Sunblock\r\nHelps avoid sunburn in\r\nthe summertime.";
const u8 gText_LumberName[]              = "Lumber";
const u8 gText_LumberDesc[]              = "Lumber\r\nUse for construction, fire-\r\nwood, or Fences.";
const u8 gText_GoldenLumberName[]        = "Golden Lumber";
const u8 gText_GoldenLumberDesc[]        = "Golden Lumber\r\nCan be used to build Fences.\r\nWon't rot ever.";
const u8 gText_AnimalFodderName[]        = "Animal Fodder";
const u8 gText_AnimalFodderDesc[]        = "Animal Fodder\r\nFeed for Cows and Sheep.\r\nPlace in Feed Boxes.";
const u8 gText_ChickenFeedName[]         = "Chicken Feed";
const u8 gText_ChickenFeedDesc[]         = "Chicken Feed\r\nPlace in the Feed Bin in \r\nthe Chicken Coop.";
const u8 gText_LotteryName[]             = "Lottery";
const u8 gText_LotteryDesc[]             = "Certificate of Rock-Papers-\r\nScissors Mastery. Win after\r\n100 straight wins over H.G.";
const u8 gText_FrisbeeName[]             = "Frisbee";
const u8 gText_FrisbeeDesc[]             = "Frisbee\r\nUse to play with your Dog\r\non Mineral Beach.\0\0";

const Article gArticles[] = {
    [ARTICLE_FLOWER_MOON_DROP] = {
        .name = gText_MoonDropGrassName,
        .unk  = 303,
        .desc = gText_MoonDropGrassDesc
    },

    [ARTICLE_FLOWER_PINK_CAT] = {
        .name = gText_PinkCatGrassName,
        .unk  = 337,
        .desc = gText_PinkCatGrassDesc
    },

    [ARTICLE_FLOWER_MAGIC_BLUE] = {
        .name = gText_BlueMagicGrassName,
        .unk  = 272,
        .desc = gText_BlueMagicGrassDesc
    },

    [ARTICLE_FLOWER_MAGIC_RED] = {
        .name = gText_RedMagicGrassName,
        .unk  = 274,
        .desc = gText_RedMagicGrassDesc
    },

    [ARTICLE_FLOWER_TOY] = {
        .name = gText_ToyFlowerName,
        .unk  = 452,
        .desc = gText_ToyFlowerDesc
    },

    [ARTICLE_WOOL_S] = {
        .name = gText_WoolSName,
        .unk  = 488,
        .desc = gText_WoolSDesc
    },

    [ARTICLE_WOOL_M] = {
        .name = gText_WoolMName,
        .unk  = 486,
        .desc = gText_WoolMDesc
    },

    [ARTICLE_WOOL_L] = {
        .name = gText_WoolLName,
        .unk  = 485,
        .desc = gText_WoolLDesc
    },

    [ARTICLE_WOOL_G] = {
        .name = gText_WoolGName,
        .unk  = 484,
        .desc = gText_WoolGDesc
    },

    [ARTICLE_WOOL_P] = {
        .name = gText_WoolPName,
        .unk  = 487,
        .desc = gText_WoolPDesc
    },

    [ARTICLE_WOOL_X] = {
        .name = gText_WoolPName,
        .unk  = 489,
        .desc = gText_WoolPDesc
    },

    [ARTICLE_YARN_S] = {
        .name = gText_YarnSName,
        .unk  = 482,
        .desc = gText_YarnSDesc
    },

    [ARTICLE_YARN_M] = {
        .name = gText_YarnMName,
        .unk  = 480,
        .desc = gText_YarnMDesc
    },

    [ARTICLE_YARN_L] = {
        .name = gText_YarnLName,
        .unk  = 479,
        .desc = gText_YarnLDesc
    },

    [ARTICLE_YARN_G] = {
        .name = gText_YarnGName,
        .unk  = 478,
        .desc = gText_YarnGDesc
    },

    [ARTICLE_YARN_P] = {
        .name = gText_YarnPName,
        .unk  = 481,
        .desc = gText_YarnPDesc
    },

    [ARTICLE_YARN_X] = {
        .name = gText_YarnXName,
        .unk  = 483,
        .desc = gText_YarnXDesc
    },

    [ARTICLE_ORE_JUNK] = {
        .name = gText_JunkOreName,
        .unk  = 267,
        .desc = gText_JunkOreDesc
    },

    [ARTICLE_ORE_COPPER] = {
        .name = gText_CopperName,
        .unk  = 108,
        .desc = gText_CopperDesc
    },

    [ARTICLE_ORE_SILVER] = {
        .name = gText_SilverName,
        .unk  = 411,
        .desc = gText_SilverDesc
    },

    [ARTICLE_ORE_GOLD] = {
        .name = gText_GoldName,
        .unk  = 209,
        .desc = gText_GoldDesc
    },

    [ARTICLE_ORE_MYSTRILE] = {
        .name = gText_MystrileName,
        .unk  = 299,
        .desc = gText_MystrileDesc
    },

    [ARTICLE_ORE_ORICHALC] = {
        .name = gText_OrichalcName,
        .unk  = 326,
        .desc = gText_OrichalcDesc
    },

    [ARTICLE_ORE_ADAMANTITE] = {
        .name = gText_AdamantiteName,
        .unk  = 0,
        .desc = gText_AdamantiteDesc
    },

    [ARTICLE_STONE_MOON] = {
        .name = gText_MoonStoneName,
        .unk  = 302,
        .desc = gText_MoonStoneDesc
    },

    [ARTICLE_SAND_ROSE] = {
        .name = gText_SandRoseName,
        .unk  = 397,
        .desc = gText_SandRoseDesc
    },

    [ARTICLE_DIAMOND_PINK] = {
        .name = gText_PinkDiamondName,
        .unk  = 336,
        .desc = gText_PinkDiamondDesc
    },

    [ARTICLE_ALEXANDRITE] = {
        .name = gText_AlexandriteName,
        .unk  = 3,
        .desc = gText_AlexandriteDesc
    },

    [ARTICLE_STONE_MYTHIC] = {
        .name = gText_MythicStoneName,
        .unk  = 395,
        .desc = gText_MythicStoneDesc
    },

    [ARTICLE_DIAMOND] = {
        .name = gText_DiamondName,
        .unk  = 120,
        .desc = gText_DiamondDesc
    },

    [ARTICLE_EMERALD] = {
        .name = gText_EmeraldName,
        .unk  = 137,
        .desc = gText_EmeraldDesc
    },

    [ARTICLE_RUBY] = {
        .name = gText_RubyName,
        .unk  = 393,
        .desc = gText_RubyDesc
    },

    [ARTICLE_TOPAZ] = {
        .name = gText_TopazName,
        .unk  = 451,
        .desc = gText_TopazDesc
    },

    [ARTICLE_PERIDOT] = {
        .name = gText_PeridotName,
        .unk  = 330,
        .desc = gText_PeridotDesc
    },

    [ARTICLE_FLUORITE] = {
        .name = gText_FluoriteName,
        .unk  = 164,
        .desc = gText_FluoriteDesc
    },

    [ARTICLE_AGATE] = {
        .name = gText_AgateName,
        .unk  = 2,
        .desc = gText_AgateDesc
    },

    [ARTICLE_AMETHYST] = {
        .name = gText_AmethystName,
        .unk  = 5,
        .desc = gText_AmethystDesc
    },

    [ARTICLE_JEWEL_GODDESS] = {
        .name = gText_HarvestGoddessJewelName,
        .unk  = 207,
        .desc = gText_HarvestGoddessJewelDesc
    },

    [ARTICLE_JEWEL_KAPPA] = {
        .name = gText_KappaJewelName,
        .unk  = 261,
        .desc = gText_KappaJewelDesc
    },

    [ARTICLE_JEWEL_TRUTH] = {
        .name = gText_JewelofTruthName,
        .unk  = 455,
        .desc = gText_JewelofTruthDesc
    },

    [ARTICLE_SUN_SPRING] = {
        .name = gText_TheSpringSunName,
        .unk  = 426,
        .desc = gText_TheSpringSunDesc
    },

    [ARTICLE_SUN_SUMMER] = {
        .name = gText_TheSummerSunName,
        .unk  = 436,
        .desc = gText_TheSpringSunDesc
    },

    [ARTICLE_SUN_AUTUMN] = {
        .name = gText_TheAutumnSunName,
        .unk  = 12,
        .desc = gText_TheSpringSunDesc
    },

    [ARTICLE_SUN_WINTER] = {
        .name = gText_TheWinterSunName,
        .unk  = 476,
        .desc = gText_TheSpringSunDesc
    },

    [ARTICLE_BRACELET] = {
        .name = gText_BraceletName,
        .unk  = 75,
        .desc = gText_BraceletDesc
    },

    [ARTICLE_NECKLACE] = {
        .name = gText_NecklaceName,
        .unk  = 311,
        .desc = gText_NecklaceDesc
    },

    [ARTICLE_EARRINGS] = {
        .name = gText_EarringsName,
        .unk  = 123,
        .desc = gText_EarringsDesc
    },

    [ARTICLE_BROACH] = {
        .name = gText_BroachName,
        .unk  = 79,
        .desc = gText_BroachDesc
    },

    [ARTICLE_WEEDS] = {
        .name = gText_WeedsName,
        .unk  = 471,
        .desc = gText_WeedsDesc
    },

    [ARTICLE_STONES] = {
        .name = gText_StonesName,
        .unk  = 428,
        .desc = gText_StonesDesc
    },

    [ARTICLE_BRANCHES] = {
        .name = gText_BranchesName,
        .unk  = 76,
        .desc = gText_BranchesDesc
    },

    [ARTICLE_RECIPE_FRENCH_FRIES] = {
        .name = gText_LithographName,
        .unk  = 270,
        .desc = gText_LithographDesc
    },

    [ARTICLE_RECIPE_KETCHUP] = {
        .name = gText_MessageinaBottleName,
        .unk  = 74,
        .desc = gText_MessageinaBottleDesc
    },

    [ARTICLE_BALL] = {
        .name = gText_BallName,
        .unk  = 49,
        .desc = gText_BallDesc
    },

    [ARTICLE_PIRATE_TREASURE] = {
        .name = gText_PirateTreasureName,
        .unk  = 340,
        .desc = gText_PirateTreasureDesc
    },

    [ARTICLE_FOSSIL] = {
        .name = gText_FossilofFishName,
        .unk  = 167,
        .desc = gText_FossilofFishDesc
    },

    [ARTICLE_EMPTY_CAN] = {
        .name = gText_EmptyCanName,
        .unk  = 87,
        .desc = gText_EmptyCanDesc
    },

    [ARTICLE_BOOTS] = {
        .name = gText_BootsName,
        .unk  = 73,
        .desc = gText_BootsDesc
    },

    [ARTICLE_FISH_BONES] = {
        .name = gText_FishBonesName,
        .unk  = 71,
        .desc = gText_FishBonesDesc
    },

    [ARTICLE_KAREN_WINE] = {
        .name = gText_KarenWineName,
        .unk  = 263,
        .desc = gText_KarenWineDesc
    },

    [ARTICLE_POPURI_MUD_BALL] = {
        .name = gText_PopuriMudBallName,
        .unk  = 345,
        .desc = gText_PopuriMudBallDesc
    },

    [ARTICLE_ANN_MUSIC_BOX] = {
        .name = gText_AnnMusicBoxName,
        .unk  = 360,
        .desc = gText_AnnMusicBoxDesc
    },

    [ARTICLE_MARY_GREAT_BOOK] = {
        .name = gText_MaryGreatBookName,
        .unk  = 277,
        .desc = gText_MaryGreatBookDesc
    },

    [ARTICLE_ELLI_PRESSED_FLOWER] = {
        .name = gText_ElliPressedFlwrName,
        .unk  = 136,
        .desc = gText_ElliPressedFlwrDesc
    },

    [ARTICLE_ALBUM_1] = {
        .name = gText_Album1Name,
        .unk  = 361,
        .desc = gText_Album1Desc
    },

    [ARTICLE_ALBUM_2] = {
        .name = gText_Album2Name,
        .unk  = 362,
        .desc = gText_Album2Desc
    },

    [ARTICLE_ALBUM_3] = {
        .name = gText_Album3Name,
        .unk  = 363,
        .desc = gText_Album3Desc
    },

    [ARTICLE_ALBUM_4] = {
        .name = gText_Album4Name,
        .unk  = 364,
        .desc = gText_Album4Desc
    },

    [ARTICLE_ALBUM_5] = {
        .name = gText_Album5Name,
        .unk  = 365,
        .desc = gText_Album5Desc
    },

    [ARTICLE_ALBUM_6] = {
        .name = gText_Album6Name,
        .unk  = 366,
        .desc = gText_Album6Desc
    },

    [ARTICLE_ALBUM_7] = {
        .name = gText_Album7Name,
        .unk  = 367,
        .desc = gText_Album7Desc
    },

    [ARTICLE_ALBUM_8] = {
        .name = gText_Album8Name,
        .unk  = 368,
        .desc = gText_Album8Desc
    },

    [ARTICLE_ALBUM_9] = {
        .name = gText_Album9Name,
        .unk  = 369,
        .desc = gText_Album9Desc
    },

    [ARTICLE_ALBUM_10] = {
        .name = gText_Album10Name,
        .unk  = 370,
        .desc = gText_Album10Desc
    },

    [ARTICLE_ALBUM_11] = {
        .name = gText_Album11Name,
        .unk  = 371,
        .desc = gText_Album11Desc
    },

    [ARTICLE_ALBUM_12] = {
        .name = gText_Album12Name,
        .unk  = 372,
        .desc = gText_Album12Desc
    },

    [ARTICLE_ALBUM_13] = {
        .name = gText_Album13Name,
        .unk  = 373,
        .desc = gText_Album13Desc
    },

    [ARTICLE_ALBUM_14] = {
        .name = gText_Album14Name,
        .unk  = 374,
        .desc = gText_Album14Desc
    },

    [ARTICLE_ALBUM_15] = {
        .name = gText_Album15Name,
        .unk  = 375,
        .desc = gText_Album15Desc
    },

    [ARTICLE_BAND_AID] = {
        .name = gText_BandAidName,
        .unk  = 52,
        .desc = gText_BandAidDesc
    },

    [ARTICLE_BOOK] = {
        .name = gText_BookName,
        .unk  = 72,
        .desc = gText_BookDesc
    },

    [ARTICLE_PERFUME] = {
        .name = gText_PerfumeName,
        .unk  = 329,
        .desc = gText_PerfumeDesc
    },

    [ARTICLE_PHOTO] = {
        .name = gText_PhotoName,
        .unk  = 331,
        .desc = gText_PhotoDesc
    },

    [ARTICLE_PLANT_ENCYCLOPEDIA] = {
        .name = gText_PlantEncyclopediaName,
        .unk  = 342,
        .desc = gText_PlantEncyclopediaDesc
    },

    [ARTICLE_INVITATION] = {
        .name = gText_InvitationName,
        .unk  = 258,
        .desc = gText_InvitationDesc
    },

    [ARTICLE_DRESS] = {
        .name = gText_DressName,
        .unk  = 121,
        .desc = gText_DressDesc
    },

    [ARTICLE_FACIAL_PACK] = {
        .name = gText_FacialPackName,
        .unk  = 139,
        .desc = gText_FacialPackDesc
    },

    [ARTICLE_SKIN_LOTION] = {
        .name = gText_SkinLotionName,
        .unk  = 412,
        .desc = gText_SkinLotionDesc
    },

    [ARTICLE_SUNBLOCK] = {
        .name = gText_SunblockName,
        .unk  = 437,
        .desc = gText_SunblockDesc
    },

    [ARTICLE_LUMBER] = {
        .name = gText_LumberName,
        .unk  = 278,
        .desc = gText_LumberDesc
    },

    [ARTICLE_LUMBER_GOLDEN] = {
        .name = gText_GoldenLumberName,
        .unk  = 210,
        .desc = gText_GoldenLumberDesc
    },

    [ARTICLE_ANIMAL_FODDER] = {
        .name = gText_AnimalFodderName,
        .unk  = 166,
        .desc = gText_AnimalFodderDesc
    },

    [ARTICLE_CHICKEN_FEED] = {
        .name = gText_ChickenFeedName,
        .unk  = 231,
        .desc = gText_ChickenFeedDesc
    },

    [ARTICLE_CERTIFICATE] = {
        .name = gText_LotteryName,
        .unk  = 271,
        .desc = gText_LotteryDesc
    },

    [ARTICLE_FRISBEE] = {
        .name = gText_FrisbeeName,
        .unk  = 201,
        .desc = gText_FrisbeeDesc
    }
};
