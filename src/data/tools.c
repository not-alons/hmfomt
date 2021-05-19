#include "inventory.h"

const u8 gText_BadAlloc[]       = "bad_alloc";       // 0x080E9614
const u8 gText_BrokenTool[]     = "Broken Tool";     // 0x080E9620
const u8 gText_NoExplanation[]  = "No Explanation";  // 0x080E962C
const u8 gText_BrokenFood[]     = "Broken Food";     // 0x080E963C
const u8 gText_BrokenArticle[]  = "Broken Article";  // 0x080E9648
const u8 gText_BrokenShipment[] = "Broken Shipment"; // 0x080E9658

const u8 gText_IronSickleName[]          = "Iron Sickle";
const u8 gText_IronSickleDesc[]          = "Sickle\r\nGood for cutting grass or\r\nweeds. Also cuts crops!";
const u8 gText_CopperSickleName[]        = "Copper Sickle";
const u8 gText_CopperSickleDesc[]        = "Copper Sickle\r\nGood for cutting grass or\r\nweeds. Also cuts crops!";
const u8 gText_SilverSickleName[]        = "Silver Sickle";
const u8 gText_SilverSickleDesc[]        = "Silver Sickle\r\nGood for cutting grass or\r\nweeds. Also cuts crops!";
const u8 gText_GoldSickleName[]          = "Gold Sickle";
const u8 gText_GoldSickleDesc[]          = "Gold Sickle\r\nGood for cutting grass or\r\nweeds. Also cuts crops!";
const u8 gText_MystrileSickleName[]      = "Mystrile Sickle";
const u8 gText_MystrileSickleDesc[]      = "Mystrile Sickle\r\nGood for cutting grass or\r\nweeds. Also cuts crops!";
const u8 gText_CursedSickleName[]        = "Cursed Sickle";
const u8 gText_CursedSickleDesc[]        = "Cursed Sickle\r\nOnce equipped, go to church\r\nto remove it.";
const u8 gText_BlessedSickleName[]       = "Blessed Sickle";
const u8 gText_BlessedSickleDesc[]       = "Blessed Sickle\r\nA Sickle whose curse has\r\nbeen removed!";
const u8 gText_MythicSickleName[]        = "Mythic Sickle";
const u8 gText_MythicSickleDesc[]        = "Mythic Sickle\r\nGood for cutting grass or\r\nweeds. Also cuts crops!";
const u8 gText_IronHoeName[]             = "Iron Hoe";
const u8 gText_IronHoeDesc[]             = "Hoe\r\nTill earth, sown fields,\r\nor grass right after mown.";
const u8 gText_CopperHoeName[]           = "Copper Hoe";
const u8 gText_CopperHoeDesc[]           = "Copper Hoe\r\nTill earth, sown fields,\r\nor grass right after mown.";
const u8 gText_SilverHoeName[]           = "Silver Hoe";
const u8 gText_SilverHoeDesc[]           = "Silver Hoe\r\nTill earth, sown fields,\r\nor grass right after mown.";
const u8 gText_GoldHoeName[]             = "Gold Hoe";
const u8 gText_GoldHoeDesc[]             = "Gold Hoe\r\nTill earth, sown fields,\r\nor grass right after mown.";
const u8 gText_MystrileHoeName[]         = "Mystrile Hoe";
const u8 gText_MystrileHoeDesc[]         = "Mystrile Hoe\r\nTill earth, sown fields,\r\nor grass after mown.";
const u8 gText_CursedHoeName[]           = "Cursed Hoe";
const u8 gText_CursedHoeDesc[]           = "Cursed Hoe\r\nOnce equipped, go to church\r\nto remove it.";
const u8 gText_BlessedHoeName[]          = "Blessed Hoe";
const u8 gText_BlessedHoeDesc[]          = "Blessed Hoe\r\nA Hoe whose curse has\r\nbeen removed!";
const u8 gText_MythicHoeName[]           = "Mythic Hoe";
const u8 gText_MythicHoeDesc[]           = "Mythic Hoe\r\nTill earth, sown fields,\r\nor grass after mown.";
const u8 gText_IronAxeName[]             = "Iron Axe";
const u8 gText_IronAxeDesc[]             = "Axe\r\nChop Branches into Lumber.\r\nCan't break apart Stumps.";
const u8 gText_CopperAxeName[]           = "Copper Axe";
const u8 gText_CopperAxeDesc[]           = "Copper Axe\r\nChop Branches\r\nor Stumps into Lumber.";
const u8 gText_SilverAxeName[]           = "Silver Axe";
const u8 gText_SilverAxeDesc[]           = "Silver Axe\r\nChop Branches or Stumps \r\ninto Lumber.";
const u8 gText_GoldAxeName[]             = "Gold Axe";
const u8 gText_GoldAxeDesc[]             = "Gold Axe\r\nChop Branches or Stumps \r\ninto Lumber.";
const u8 gText_MystrileAxeName[]         = "Mystrile Axe";
const u8 gText_MystrileAxeDesc[]         = "Mystrile Axe\r\nChop Branches or Stumps \r\ninto Lumber.";
const u8 gText_CursedAxeName[]           = "Cursed Axe";
const u8 gText_CursedAxeDesc[]           = "Cursed Axe\r\nOnce equipped, go to church\r\nremove it.";
const u8 gText_BlessedAxeName[]          = "Blessed Axe";
const u8 gText_BlessedAxeDesc[]          = "Blessed Axe\r\nAn Axe whose curse has\r\nbeen removed!";
const u8 gText_MythicAxeName[]           = "Mythic Axe";
const u8 gText_MythicAxeDesc[]           = "Mythic Axe\r\nChop Branches or Stumps \r\ninto Lumber.";
const u8 gText_IronHammerName[]          = "Iron Hammer";
const u8 gText_IronHammerDesc[]          = "Hammer\r\nSmash Stones or fences.\r\nPrepare fields for tilling.";
const u8 gText_CopperHammerName[]        = "Copper Hammer";
const u8 gText_CopperHammerDesc[]        = "Copper Hammer\r\nSmash Stones, large Stones, \r\nor fences. Prepare  fields.";
const u8 gText_SilverHammerName[]        = "Silver Hammer";
const u8 gText_SilverHammerDesc[]        = "Silver Hammer\r\nlarge, huge Stones, or \r\nfields for tilling.";
const u8 gText_GoldHammerName[]          = "Gold Hammer";
const u8 gText_GoldHammerDesc[]          = "Gold Hammer\r\nSmash Stones of all sizes\r\nand fences. Prepare fields.";
const u8 gText_MystrileHammerName[]      = "Mystrile Hammer";
const u8 gText_MystrileHammerDesc[]      = "Mystrile Hammer\r\nSmash Stones of all sizes\r\nand fences. Prepare fields.";
const u8 gText_CursedHammerName[]        = "Cursed Hammer";
const u8 gText_CursedHammerDesc[]        = "Cursed Hammer\r\nOnce equipped, go to Church\r\nto remove it.";
const u8 gText_BlessedHammerName[]       = "Blessed Hammer";
const u8 gText_BlessedHammerDesc[]       = "Blessed Hammer\r\nA Hammer whose curse \r\nhas been removed!";
const u8 gText_MythicHammerName[]        = "Mythic Hammer";
const u8 gText_MythicHammerDesc[]        = "Mythic Hammer\r\nSmash Stones of all sizes\r\nand fences. Prepare fields.";
const u8 gText_WateringCanName[]         = "Watering Can";
const u8 gText_WateringCanDesc[]         = "Watering Can\r\nWater crops.\r\n";
const u8 gText_CopperWateringCanName[]   = "Copper Watering Can";
const u8 gText_CopperWateringCanDesc[]   = "Copper Watering Can\r\nWater crops.\r\n";
const u8 gText_SilverWateringCanName[]   = "Silver Watering Can";
const u8 gText_SilverWateringCanDesc[]   = "Silver Watering Can\r\nWater crops.\r\n";
const u8 gText_GoldWateringCanName[]     = "Gold Watering Can";
const u8 gText_GoldWateringCanDesc[]     = "Gold Watering Can\r\nWater crops.\r\n";
const u8 gText_MystrileWateringCanName[] = "Mystrile Watering Can";
const u8 gText_MystrileWateringCanDesc[] = "Mystrile Watering Can\r\nWater crops.\r\n";
const u8 gText_CursedWateringCanName[]   = "Cursed Watering Can";
const u8 gText_CursedWateringCanDesc[]   = "Cursed Watering Can\r\nOnce equipped, go to Church\r\nto remove it.";
const u8 gText_BlessedWateringCanName[]  = "Blessed Watering Can";
const u8 gText_BlessedWateringCanDesc[]  = "Blessed Watering Can\r\nCurse has been removed!\r\n";
const u8 gText_MythicWateringCanName[]   = "Mythic Watering Can";
const u8 gText_MythicWateringCanDesc[]   = "Mythic Watering Can\r\nWater crops.\r\n";
const u8 gText_FishingRodName[]          = "Fishing Rod";
const u8 gText_FishingRodDesc[]          = "Fishing RodFor fishing.";
const u8 gText_CopperFishingRodName[]    = "Copper Fishing Rod";
const u8 gText_CopperFishingRodDesc[]    = "Copper Fishing Rod\r\nFor fishing.\r\n";
const u8 gText_SilverFishingRodName[]    = "Silver Fishing Rod";
const u8 gText_SilverFishingRodDesc[]    = "Silver Fishing Rod\r\nFor fishing.\r\n";
const u8 gText_GoldFishingRodName[]      = "Gold Fishing Rod";
const u8 gText_GoldFishingRodDesc[]      = "Gold Fishing Rod\r\nFor fishing.\r\n";
const u8 gText_MystrileFishingRodName[]  = "Mystrile Fishing Rod";
const u8 gText_MystrileFishingRodDesc[]  = "Mystrile Fishing Rod\r\nFor fishing.\r\n";
const u8 gText_CursedFishingRodName[]    = "Cursed Fishing Rod";
const u8 gText_CursedFishingRodDesc[]    = "Cursed Fishing Rod\r\nOnce equipped, go to Church\r\nto remove it.";
const u8 gText_BlessedFishingRodName[]   = "Blessed Fishing Rod";
const u8 gText_BlessedFishingRodDesc[]   = "Blessed Fishing Rod\r\nA Fishing Rod whose curse \r\nhas been removed!";
const u8 gText_MythicFishingRodName[]    = "Mythic Fishing Rod";
const u8 gText_MythicFishingRodDesc[]    = "Mythic Fishing Rod\r\nFor fishing.\r\n";
const u8 gText_CowMiraclePotionName[]    = "Cow Miracle Potion";
const u8 gText_CowMiraclePotionDesc[]    = "Cow Miracle Potion\r\nUse to impregnate adult \r\nCows.";
const u8 gText_SheepMiraclePotionName[]  = "Sheep Miracle Potion";
const u8 gText_SheepMiraclePotionDesc[]  = "Sheep Miracle Potion\r\nUse to impregnate adult \r\nSheep.";
const u8 gText_TurnipSeedsName[]         = "Turnip Seeds";
const u8 gText_TurnipSeedsDesc[]         = "Turnip Seeds\r\nPlant in Spring.\r\n";
const u8 gText_PotatoSeedsName[]         = "Potato Seeds";
const u8 gText_PotatoSeedsDesc[]         = "Potato Seeds\r\nPlant in Spring.\r\n";
const u8 gText_CucumberSeedsName[]       = "Cucumber Seeds";
const u8 gText_CucumberSeedsDesc[]       = "Cucumber Seeds\r\nPlant in Spring.\r\n";
const u8 gText_StrawberrySeedsName[]     = "Strawberry Seeds";
const u8 gText_StrawberrySeedsDesc[]     = "Strawberry Seeds\r\nPlant in Spring.\r\n";
const u8 gText_CabbageSeedsName[]        = "Cabbage Seeds";
const u8 gText_CabbageSeedsDesc[]        = "Cabbage Seeds\r\nPlant in Spring.\r\n";
const u8 gText_TomatoSeedsName[]         = "Tomato Seeds";
const u8 gText_TomatoSeedsDesc[]         = "Tomato Seeds\r\nPlant in Summer.\r\n";
const u8 gText_CornSeedsName[]           = "Corn Seeds";
const u8 gText_CornSeedsDesc[]           = "Corn Seeds\r\nPlant in Summer.\r\n";
const u8 gText_OnionSeedsName[]          = "Onion Seeds";
const u8 gText_OnionSeedsDesc[]          = "Onion Seeds\r\nPlant in Summer.\r\n";
const u8 gText_PumpkinSeedsName[]        = "Pumpkin Seeds";
const u8 gText_PumpkinSeedsDesc[]        = "Pumpkin Seeds\r\nPlant in Summer.\r\n";
const u8 gText_PineappleSeedsName[]      = "Pineapple Seeds";
const u8 gText_PineappleSeedsDesc[]      = "Pineapple Seeds\r\nPlant in Summer.\r\n";
const u8 gText_EggplantSeedsName[]       = "Eggplant Seeds";
const u8 gText_EggplantSeedsDesc[]       = "Eggplant Seeds\r\nPlant in Fall.\r\n";
const u8 gText_CarrotSeedsName[]         = "Carrot Seeds";
const u8 gText_CarrotSeedsDesc[]         = "Carrot Seeds\r\nPlant in Fall.\r\n";
const u8 gText_SweetPotatoSeedsName[]    = "Sweet Potato Seeds";
const u8 gText_SweetPotatoSeedsDesc[]    = "Sweet Potato Seeds\r\nPlant in Fall.\r\n";
const u8 gText_SpinachSeedsName[]        = "Spinach Seeds";
const u8 gText_SpinachSeedsDesc[]        = "Spinach Seeds\r\nPlant in Fall.\r\n";
const u8 gText_GreenPepperSeedsName[]    = "Green Pepper Seeds";
const u8 gText_GreenPepperSeedsDesc[]    = "Green Pepper Seeds\r\nPlant in Fall.\r\n";
const u8 gText_GrassSeedsName[]          = "Grass Seeds";
const u8 gText_GrassSeedsDesc[]          = "Grass Seeds\r\nPlant any season but Winter.\r\n";
const u8 gText_MoonDropSeedsName[]       = "Moon Drop Seeds";
const u8 gText_MoonDropSeedsDesc[]       = "Moon Drop Seeds\r\nPlant in Spring or Fall\r\n";
const u8 gText_PinkCatSeedsName[]        = "Pink Cat Seeds";
const u8 gText_PinkCatSeedsDesc[]        = "Pink Cat Seeds\r\nPlant in Summer or Fall.\r\n";
const u8 gText_MagicSeedsName[]          = "Magic Seeds";
const u8 gText_MagicSeedsDesc[]          = "Magic Seeds\r\nPlant in Fall.\r\n";
const u8 gText_ToyFlowerSeedsName[]      = "Toy Flower Seeds";
const u8 gText_ToyFlowerSeedsDesc[]      = "Toy Flower Seeds\r\nPlant in Spring.\r\n";
const u8 gText_BrushName[]               = "Brush";
const u8 gText_BrushDesc[]               = "Brush\r\nA Tool for brushing Cows, \r\nSheep, or Horses.";
const u8 gText_MilkerName[]              = "Milker";
const u8 gText_MilkerDesc[]              = "Milker\r\nA Tool for milking adult\r\nfemale cows. ";
const u8 gText_ClipperName[]             = "Clipper";
const u8 gText_ClipperDesc[]             = "A Tool for shearing Wool\r\nfrom adult Sheep.\r\n";
const u8 gText_BellName[]                = "Bell";
const u8 gText_BellDesc[]                = "Bell\r\nRing the Bell to call Cows\r\nand Sheep to you.";
const u8 gText_AnimalMedicineName[]      = "Animal Medicine";
const u8 gText_AnimalMedicineDesc[]      = "Animal Medicine\r\nUse to cure sick livestock.\r\n";
const u8 gText_BlueFeatherName[]         = "Blue Feather";
const u8 gText_BlueFeatherDesc[]         = "Blue Feather\r\nUse it to propose to that\r\nspecial girl.";
const u8 gText_PedometerName[]           = "Pedometer";
const u8 gText_PedometerDesc[]           = "Pedometer\r\n";
const u8 gText_TeleportStoneName[]       = "Teleport Stone";
const u8 gText_TeleportStoneDesc[]       = "Teleport Stone\r\nTeleport to a location of\r\nyour choice.";
const u8 gText_GoddessGemName[]          = "Gem of the Goddess";
const u8 gText_GoddessGemDesc[]          = "Gem of the Goddess\r\nRecuperate Stamina \r\nover time.";
const u8 gText_KappaGemName[]            = "Gem of the Kappa";
const u8 gText_KappaGemDesc[]            = "Gem of the Kappa\r\nRecuperate Fatigue \r\nover time.";
const u8 gText_TruthGemName[]            = "Gem of Truth";
const u8 gText_TruthGemDesc[]            = "Gem of Truth\r\nDisplays your Stamina\r\nand Fatigue.";

const Tool gTools[] = {
    [TOOL_SICKLE_IRON] = {
        .name = gText_IronSickleName,
        .unk = 403,
        .desc = gText_IronSickleDesc
    },

    [TOOL_SICKLE_COPPER] = {
        .name = gText_CopperSickleName,
        .unk = 404,
        .desc = gText_CopperSickleDesc
    },

    [TOOL_SICKLE_SILVER] = {
        .name = gText_SilverSickleName,
        .unk = 405,
        .desc = gText_SilverSickleDesc
    },

    [TOOL_SICKLE_GOLD] = {
        .name = gText_GoldSickleName,
        .unk = 406,
        .desc = gText_GoldSickleDesc
    },

    [TOOL_SICKLE_MYSTRILE] = {
        .name = gText_MystrileSickleName,
        .unk = 407,
        .desc = gText_MystrileSickleDesc
    },

    [TOOL_SICKLE_CURSED] = {
        .name = gText_CursedSickleName,
        .unk = 409,
        .desc = gText_CursedSickleDesc
    },

    [TOOL_SICKLE_BLESSED] = {
        .name = gText_BlessedSickleName,
        .unk = 408,
        .desc = gText_BlessedSickleDesc
    },

    [TOOL_SICKLE_MYTHIC] = {
        .name = gText_MythicSickleName,
        .unk = 410,
        .desc = gText_MythicSickleDesc
    },

    [TOOL_HOE_IRON] = {
        .name = gText_IronHoeName,
        .unk = 234,
        .desc = gText_IronHoeDesc
    },

    [TOOL_HOE_COPPER] = {
        .name = gText_CopperHoeName,
        .unk = 235,
        .desc = gText_CopperHoeDesc
    },

    [TOOL_HOE_SILVER] = {
        .name = gText_SilverHoeName,
        .unk = 236,
        .desc = gText_SilverHoeDesc
    },

    [TOOL_HOE_GOLD] = {
        .name = gText_GoldHoeName,
        .unk = 237,
        .desc = gText_GoldHoeDesc
    },

    [TOOL_HOE_MYSTRILE] = {
        .name = gText_MystrileHoeName,
        .unk = 238,
        .desc = gText_MystrileHoeDesc
    },

    [TOOL_HOE_CURSED] = {
        .name = gText_CursedHoeName,
        .unk = 240,
        .desc = gText_CursedHoeDesc
    },

    [TOOL_HOE_BLESSED] = {
        .name = gText_BlessedHoeName,
        .unk = 239,
        .desc = gText_BlessedHoeDesc
    },

    [TOOL_HOE_MYTHIC] = {
        .name = gText_MythicHoeName,
        .unk = 241,
        .desc = gText_MythicHoeDesc
    },

    [TOOL_AXE_IRON] = {
        .name = gText_IronAxeName,
        .unk = 13,
        .desc = gText_IronAxeDesc
    },

    [TOOL_AXE_COPPER] = {
        .name = gText_CopperAxeName,
        .unk = 14,
        .desc = gText_CopperAxeDesc
    },

    [TOOL_AXE_SILVER] = {
        .name = gText_SilverAxeName,
        .unk = 15,
        .desc = gText_SilverAxeDesc
    },

    [TOOL_AXE_GOLD] = {
        .name = gText_GoldAxeName,
        .unk = 16,
        .desc = gText_GoldAxeDesc
    },

    [TOOL_AXE_MYSTRILE] = {
        .name = gText_MystrileAxeName,
        .unk = 17,
        .desc = gText_MystrileAxeDesc
    },

    [TOOL_AXE_CURSED] = {
        .name = gText_CursedAxeName,
        .unk = 19,
        .desc = gText_CursedAxeDesc
    },

    [TOOL_AXE_BLESSED] = {
        .name = gText_BlessedAxeName,
        .unk = 18,
        .desc = gText_BlessedAxeDesc
    },

    [TOOL_AXE_MYTHIC] = {
        .name = gText_MythicAxeName,
        .unk = 20,
        .desc = gText_MythicAxeDesc
    },

    [TOOL_HAMMER_IRON] = {
        .name = gText_IronHammerName,
        .unk = 223,
        .desc = gText_IronHammerDesc
    },

    [TOOL_HAMMER_COPPER] = {
        .name = gText_CopperHammerName,
        .unk = 224,
        .desc = gText_CopperHammerDesc
    },

    [TOOL_HAMMER_SILVER] = {
        .name = gText_SilverHammerName,
        .unk = 225,
        .desc = gText_SilverHammerDesc
    },

    [TOOL_HAMMER_GOLD] = {
        .name = gText_GoldHammerName,
        .unk = 226,
        .desc = gText_GoldHammerDesc
    },

    [TOOL_HAMMER_MYSTRILE] = {
        .name = gText_MystrileHammerName,
        .unk = 227,
        .desc = gText_MystrileHammerDesc
    },

    [TOOL_HAMMER_CURSED] = {
        .name = gText_CursedHammerName,
        .unk = 229,
        .desc = gText_CursedHammerDesc
    },

    [TOOL_HAMMER_BLESSED] = {
        .name = gText_BlessedHammerName,
        .unk = 228,
        .desc = gText_BlessedHammerDesc
    },

    [TOOL_HAMMER_MYTHIC] = {
        .name = gText_MythicHammerName,
        .unk = 230,
        .desc = gText_MythicHammerDesc
    },

    [TOOL_WATERING_CAN_IRON] = {
        .name = gText_WateringCanName,
        .unk = 462,
        .desc = gText_WateringCanDesc
    },

    [TOOL_WATERING_CAN_COPPER] = {
        .name = gText_CopperWateringCanName,
        .unk = 463,
        .desc = gText_CopperWateringCanDesc
    },

    [TOOL_WATERING_CAN_SILVER] = {
        .name = gText_SilverWateringCanName,
        .unk = 464,
        .desc = gText_SilverWateringCanDesc
    },

    [TOOL_WATERING_CAN_GOLD] = {
        .name = gText_GoldWateringCanName,
        .unk = 465,
        .desc = gText_GoldWateringCanDesc
    },

    [TOOL_WATERING_CAN_MYSTRILE] = {
        .name = gText_MystrileWateringCanName,
        .unk = 466,
        .desc = gText_MystrileWateringCanDesc
    },

    [TOOL_WATERING_CAN_CURSED] = {
        .name = gText_CursedWateringCanName,
        .unk = 468,
        .desc = gText_CursedWateringCanDesc
    },

    [TOOL_WATERING_CAN_BLESSED] = {
        .name = gText_BlessedWateringCanName,
        .unk = 467,
        .desc = gText_BlessedWateringCanDesc
    },

    [TOOL_WATERING_CAN_MYTHIC] = {
        .name = gText_MythicWateringCanName,
        .unk = 469,
        .desc = gText_MythicWateringCanDesc
    },

    [TOOL_FISHING_ROD_IRON] = {
        .name = gText_FishingRodName,
        .unk = 148,
        .desc = gText_FishingRodDesc
    },

    [TOOL_FISHING_ROD_COPPER] = {
        .name = gText_CopperFishingRodName,
        .unk = 149,
        .desc = gText_CopperFishingRodDesc
    },

    [TOOL_FISHING_ROD_SILVER] = {
        .name = gText_SilverFishingRodName,
        .unk = 150,
        .desc = gText_SilverFishingRodDesc
    },

    [TOOL_FISHING_ROD_GOLD] = {
        .name = gText_GoldFishingRodName,
        .unk = 151,
        .desc = gText_GoldFishingRodDesc
    },

    [TOOL_FISHING_ROD_MYSTRILE] = {
        .name = gText_MystrileFishingRodName,
        .unk = 152,
        .desc = gText_MystrileFishingRodDesc
    },

    [TOOL_FISHING_ROD_CURSED] = {
        .name = gText_CursedFishingRodName,
        .unk = 154,
        .desc = gText_CursedFishingRodDesc
    },

    [TOOL_FISHING_ROD_BLESSED] = {
        .name = gText_BlessedFishingRodName,
        .unk = 153,
        .desc = gText_BlessedFishingRodDesc
    },

    [TOOL_FISHING_ROD_MYTHIC] = {
        .name = gText_MythicFishingRodName,
        .unk = 155,
        .desc = gText_MythicFishingRodDesc
    },

    [TOOL_MIRACLE_POTION_COW] = {
        .name = gText_CowMiraclePotionName,
        .unk = 91,
        .desc = gText_CowMiraclePotionDesc
    },

    [TOOL_MIRACLE_POTION_SHEEP] = {
        .name = gText_SheepMiraclePotionName,
        .unk = 402,
        .desc = gText_SheepMiraclePotionDesc
    },

    [TOOL_SEEDS_TURNIP] = {
        .name = gText_TurnipSeedsName,
        .unk = 458,
        .desc = gText_TurnipSeedsDesc
    },

    [TOOL_SEEDS_POTATO] = {
        .name = gText_PotatoSeedsName,
        .unk = 348,
        .desc = gText_PotatoSeedsDesc
    },

    [TOOL_SEEDS_CUCUMBER] = {
        .name = gText_CucumberSeedsName,
        .unk = 114,
        .desc = gText_CucumberSeedsDesc
    },

    [TOOL_SEEDS_STRAWBERRY] = {
        .name = gText_StrawberrySeedsName,
        .unk = 433,
        .desc = gText_StrawberrySeedsDesc
    },

    [TOOL_SEEDS_CABBAGE] = {
        .name = gText_CabbageSeedsName,
        .unk = 85,
        .desc = gText_CabbageSeedsDesc
    },

    [TOOL_SEEDS_TOMATO] = {
        .name = gText_TomatoSeedsName,
        .unk = 450,
        .desc = gText_TomatoSeedsDesc
    },

    [TOOL_SEEDS_CORN] = {
        .name = gText_CornSeedsName,
        .unk = 111,
        .desc = gText_CornSeedsDesc
    },

    [TOOL_SEEDS_ONION] = {
        .name = gText_OnionSeedsName,
        .unk = 320,
        .desc = gText_OnionSeedsDesc
    },

    [TOOL_SEEDS_PUMPKIN] = {
        .name = gText_PumpkinSeedsName,
        .unk = 356,
        .desc = gText_PumpkinSeedsDesc
    },

    [TOOL_SEEDS_PINEAPPLE] = {
        .name = gText_PineappleSeedsName,
        .unk = 335,
        .desc = gText_PineappleSeedsDesc
    },

    [TOOL_SEEDS_EGGPLANT] = {
        .name = gText_EggplantSeedsName,
        .unk = 134,
        .desc = gText_EggplantSeedsDesc
    },

    [TOOL_SEEDS_CARROT] = {
        .name = gText_CarrotSeedsName,
        .unk = 90,
        .desc = gText_CarrotSeedsDesc
    },

    [TOOL_SEEDS_SWEET_POTATO] = {
        .name = gText_SweetPotatoSeedsName,
        .unk = 440,
        .desc = gText_SweetPotatoSeedsDesc
    },

    [TOOL_SEEDS_SPINACH] = {
        .name = gText_SpinachSeedsName,
        .unk = 424,
        .desc = gText_SpinachSeedsDesc
    },

    [TOOL_SEEDS_GREEN_PEPPER] = {
        .name = gText_GreenPepperSeedsName,
        .unk = 219,
        .desc = gText_GreenPepperSeedsDesc
    },

    [TOOL_SEEDS_GRASS] = {
        .name = gText_GrassSeedsName,
        .unk = 215,
        .desc = gText_GrassSeedsDesc
    },

    [TOOL_SEEDS_MOON_DROP] = {
        .name = gText_MoonDropSeedsName,
        .unk = 305,
        .desc = gText_MoonDropSeedsDesc
    },

    [TOOL_SEEDS_PINK_CAT] = {
        .name = gText_PinkCatSeedsName,
        .unk = 339,
        .desc = gText_PinkCatSeedsDesc
    },

    [TOOL_SEEDS_MAGIC] = {
        .name = gText_MagicSeedsName,
        .unk = 276,
        .desc = gText_MagicSeedsDesc
    },

    [TOOL_SEEDS_TOY_FLOWER] = {
        .name = gText_ToyFlowerSeedsName,
        .unk = 454,
        .desc = gText_ToyFlowerSeedsDesc
    },

    [TOOL_BRUSH] = {
        .name = gText_BrushName,
        .unk = 80,
        .desc = gText_BrushDesc
    },

    [TOOL_MILKER] = {
        .name = gText_MilkerName,
        .unk = 294,
        .desc = gText_MilkerDesc
    },

    [TOOL_CLIPPERS] = {
        .name = gText_ClipperName,
        .unk = 222,
        .desc = gText_ClipperDesc
    },

    [TOOL_BELL] = {
        .name = gText_BellName,
        .unk = 59,
        .desc = gText_BellDesc
    },

    [TOOL_ANIMAL_MEDICINE] = {
        .name = gText_AnimalMedicineName,
        .unk = 6,
        .desc = gText_AnimalMedicineDesc
    },

    [TOOL_BLUE_FEATHER] = {
        .name = gText_BlueFeatherName,
        .unk = 67,
        .desc = gText_BlueFeatherDesc
    },

    [TOOL_PEDOMETER] = {
        .name = gText_PedometerName,
        .unk = 328,
        .desc = gText_PedometerDesc
    },

    [TOOL_TELEPORT_STONE] = {
        .name = gText_TeleportStoneName,
        .unk = 165,
        .desc = gText_TeleportStoneDesc
    },

    [TOOL_GEM_GODDESS] = {
        .name = gText_GoddessGemName,
        .unk = 208,
        .desc = gText_GoddessGemDesc
    },

    [TOOL_GEM_KAPPA] = {
        .name = gText_KappaGemName,
        .unk = 262,
        .desc = gText_KappaGemDesc
    },

    [TOOL_GEM_TRUTH] = {
        .name = gText_TruthGemName,
        .unk = 456,
        .desc = gText_TruthGemDesc
    }
};
