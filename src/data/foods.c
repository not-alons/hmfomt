#include "inventory.h"

const u8 gText_TurnipName[]            = "Turnip";
const u8 gText_TurnipDesc[]            = "Turnip\r\nCan be eaten or shipped.\r\n";        
const u8 gText_PotatoName[]            = "Potato";
const u8 gText_PotatoDesc[]            = "Potato\r\nCan be eaten or shipped.\r\n";        
const u8 gText_CucumberName[]          = "Cucumber";
const u8 gText_CucumberDesc[]          = "Cucumber\r\nCan be eaten or shipped.\r\n";    
const u8 gText_StrawberryName[]        = "Strawberry";
const u8 gText_StrawberryDesc[]        = "Strawberry\r\nCan be eaten or shipped.\r\n";
const u8 gText_CabbageName[]           = "Cabbage";
const u8 gText_CabbageDesc[]           = "Cabbage\r\nCan be eaten or shipped.\r\n";      
const u8 gText_TomatoName[]            = "Tomato";
const u8 gText_TomatoDesc[]            = "Tomato\r\nCan be eaten or shipped.\r\n";
const u8 gText_CornName[]              = "Corn";
const u8 gText_CornDesc[]              = "Corn\r\nCan be eaten or shipped.\r\n";
const u8 gText_OnionName[]             = "Onion";
const u8 gText_OnionDesc[]             = "Onion\r\nCan be eaten or shipped.\r\n";
const u8 gText_PumpkinName[]           = "Pumpkin";
const u8 gText_PumpkinDesc[]           = "Pumpkin\r\nCan be eaten or shipped.\r\n";
const u8 gText_PineappleName[]         = "Pineapple";
const u8 gText_PineappleDesc[]         = "Pineapple\r\nCan be eaten or shipped.\r\n";
const u8 gText_EggplantName[]          = "Eggplant";
const u8 gText_EggplantDesc[]          = "Eggplant\r\nCan be eaten or shipped.\r\n";
const u8 gText_CarrotName[]            = "Carrot";
const u8 gText_CarrotDesc[]            = "Carrot\r\nCan be eaten or shipped.\r\n";
const u8 gText_SweetPotatoName[]       = "Sweet Potato";
const u8 gText_SweetPotatoDesc[]       = "Sweet Potato\r\nCan be eaten or shipped.\r\n";
const u8 gText_SpinachName[]           = "Spinach";
const u8 gText_SpinachDesc[]           = "Spinach\r\nCan be eaten or shipped.\r\n";
const u8 gText_GreenPepperName[]       = "Green Pepper";
const u8 gText_GreenPepperDesc[]       = "Green Pepper\r\nCan be eaten or shipped.\r\n";
const u8 gText_RegularQualityEggName[] = "Regular Quality Egg";
const u8 gText_RegularQualityEggDesc[] = "Regular Quality Egg\r\nCan be eaten or shipped.\r\n";
const u8 gText_GoodQualityEggName[]    = "Good Quality Egg";
const u8 gText_GoodQualityEggDesc[]    = "Good Quality Egg\r\nCan be eaten or shipped.\r\n";
const u8 gText_HighQualityEggName[]    = "High Quality Egg";
const u8 gText_HighQualityEggDesc[]    = "High Quality Egg\r\nCan be eaten or shipped.\r\n";
const u8 gText_GoldenEggName[]         = "Golden Egg";
const u8 gText_GoldenEggDesc[]         = "Golden Egg\r\nCan be eaten or shipped.\r\n";
const u8 gText_PEggName[]              = "P Egg";
const u8 gText_PEggDesc[]              = "P Egg\r\nCan be eaten or shipped.\r\n";
const u8 gText_XEggName[]              = "X Egg";
const u8 gText_XEggDesc[]              = "X Egg\r\nCan be eaten or shipped.\r\n";
const u8 gText_SpaBoiledEggName[]      = "Spa-Boiled Egg";
const u8 gText_SpaBoiledEggDesc[]      = "Spa-Boiled Egg\r\nPut an Egg in Hot Spring.\r\nCan be eaten or shipped.";
const u8 gText_MayonnaiseSName[]       = "Mayonnaise (S)";
const u8 gText_MayonnaiseSDesc[]       = "Mayonnaise (S)\r\nPlace Eggs in the \r\nMayonnaise Maker.";
const u8 gText_MayonnaiseMName[]       = "Mayonnaise (M)";
const u8 gText_MayonnaiseMDesc[]       = "Mayonnaise (M)\r\nPlace Eggs in the \r\nMayonnaise Maker.";
const u8 gText_MayonnaiseLName[]       = "Mayonnaise (L)";
const u8 gText_MayonnaiseLDesc[]       = "Mayonnaise (L)\r\nPlace Eggs in the \r\nMayonnaise Maker.";
const u8 gText_MayonnaiseGName[]       = "Mayonnaise (G)";
const u8 gText_MayonnaiseGDesc[]       = "Mayonnaise (G)\r\nPlace Eggs in the \r\nMayonnaise Maker.";
const u8 gText_MayonnaisePName[]       = "Mayonnaise (P)";
const u8 gText_MayonnaisePDesc[]       = "Mayonnaise (P)\r\nPlace Eggs in the \r\nMayonnaise Maker.";
const u8 gText_MayonnaiseXName[]       = "Mayonnaise (X)";
const u8 gText_MayonnaiseXDesc[]       = "Mayonnaise (X)\r\nPlace Eggs in the \r\nMayonnaise Maker.";
const u8 gText_MilkSName[]             = "Milk (S)";
const u8 gText_MilkSDesc[]             = "Milk (S)\r\nMilk from a Cow.\r\nCan be drunk or shipped.";
const u8 gText_MilkMName[]             = "Milk (M)";
const u8 gText_MilkMDesc[]             = "Milk (M)\r\nMilk from a Cow.\r\nCan be drunk or shipped.";
const u8 gText_MilkLName[]             = "Milk (L)";
const u8 gText_MilkLDesc[]             = "Milk (L)\r\nMilk from a Cow.\r\nCan be drunk or shipped.";
const u8 gText_MilkGName[]             = "Milk (G)";
const u8 gText_MilkGDesc[]             = "Milk (G)\r\nMilk from a Cow.\r\nCan be drunk or shipped.";
const u8 gText_MilkPName[]             = "Milk (P)";
const u8 gText_MilkPDesc[]             = "Milk (P)\r\nMilk from a Cow.\r\nCan be drunk or shipped.";
const u8 gText_MilkXName[]             = "Milk (X)";
const u8 gText_MilkXDesc[]             = "Milk (X)\r\nMilk from a Cow.\r\nCan be drunk or shipped.";
const u8 gText_CheeseSName[]           = "Cheese (S)";
const u8 gText_CheeseSDesc[]           = "Cheese (S)\r\nPlace Milk in the Cheese \r\nMaker. ";
const u8 gText_CheeseMName[]           = "Cheese (M)";
const u8 gText_CheeseMDesc[]           = "Cheese (M)\r\nPlace Milk in the Cheese \r\nMaker. ";
const u8 gText_CheeseLName[]           = "Cheese (L)";
const u8 gText_CheeseLDesc[]           = "Cheese (L)\r\nPlace Milk in the Cheese \r\nMaker. ";
const u8 gText_CheeseGName[]           = "Cheese (G)";
const u8 gText_CheeseGDesc[]           = "Cheese (G)\r\nPlace Milk in the Cheese \r\nMaker. ";
const u8 gText_CheesePName[]           = "Cheese (P)";
const u8 gText_CheesePDesc[]           = "Cheese (P)\r\nPlace Milk in the Cheese \r\nMaker. ";
const u8 gText_CheeseXName[]           = "Cheese (X)";
const u8 gText_CheeseXDesc[]           = "Cheese (X)\r\nPlace Milk in the Cheese \r\nMaker. ";
const u8 gText_AppleName[]             = "Apple";
const u8 gText_AppleDesc[]             = "Apple\r\nGrows on Apple Trees\r\nCan be eated or shipped.";
const u8 gText_HoneyName[]             = "Honey";
const u8 gText_HoneyDesc[]             = "Honey\r\nMade by Honey Bees.\r\nCan be eaten or shipped.";
const u8 gText_BambooShootName[]       = "Bamboo Shoot";
const u8 gText_BambooShootDesc[]       = "Bamboo Shoot\r\nFind them in the mountains.\r\nCan be eaten or shipped.";
const u8 gText_WildGrapesName[]        = "Wild Grapes";
const u8 gText_WildGrapesDesc[]        = "Wild Grapes\r\nFind them in the mountains.\r\nCan be eaten or shipped.";
const u8 gText_MushroomName[]          = "Mushroom";
const u8 gText_MushroomDesc[]          = "Mushroom\r\nFind them in the mountains.\r\nCan be eaten or shipped.";
const u8 gText_PoisonousMushroomName[] = "Poisonous Mushroom";
const u8 gText_PoisonousMushroomDesc[] = "Poisonous Mushroom\r\nFind them in the mountains.\r\nDangerous if eaten.";
const u8 gText_TruffleName[]           = "Truffle";
const u8 gText_TruffleDesc[]           = "Truffle\r\nFind them in the mountains.\r\nVery rare.";
const u8 gText_BlueGrassName[]         = "Blue Grass";
const u8 gText_BlueGrassDesc[]         = "Blue Grass\r\nFind them in the mountains.\r\nEat to recover some Stamina.";
const u8 gText_GreenGrassName[]        = "Green Grass";
const u8 gText_GreenGrassDesc[]        = "Green Grass\r\nFind them in the mountains.\r\nEat to recover some Fatigue.";
const u8 gText_RedGrassName[]          = "Red Grass";
const u8 gText_RedGrassDesc[]          = "Red Grass\r\nFind them in the mountains.\r\nDangerous if eaten.";
const u8 gText_YellowGrassName[]       = "Yellow Grass";
const u8 gText_YellowGrassDesc[]       = "Yellow Grass\r\nDecreases Stamina,\r\nbut recovers some Fatigue.";
const u8 gText_OrangeGrassName[]       = "Orange Grass";
const u8 gText_OrangeGrassDesc[]       = "Orange Grass\r\nDoes not affect\r\nStamina or Fatigue.";
const u8 gText_PurpleGrassName[]       = "Purple Grass";
const u8 gText_PurpleGrassDesc[]       = "Purple Grass\r\nEat to recover some\r\nStamina and Fatigue.";
const u8 gText_IndigoGrassName[]       = "Indigo Grass";
const u8 gText_IndigoGrassDesc[]       = "Indigo Grass\r\nFind them on the beach.\r\nEat to recover Stamina.";
const u8 gText_BlackGrassName[]        = "Black Grass";
const u8 gText_BlackGrassDesc[]        = "Black Grass\r\nEat to recover some\r\nStamina and Fatigue.";
const u8 gText_WhiteGrassName[]        = "White Grass";
const u8 gText_WhiteGrassDesc[]        = "White Grass\r\nEat to recover some\r\nStamina and Fatigue.";
const u8 gText_QueenoftheNightName[]   = "Queen of the Night";
const u8 gText_QueenoftheNightDesc[]   = "Queen of the Night\r\nBlooms on Summer nights. \r\nBrings good luck.";
const u8 gText_BodigizerName[]         = "Bodigizer";
const u8 gText_BodigizerDesc[]         = "Bodigizer\r\nHelps recuperate Stamina.\r\n";
const u8 gText_BodigizerXLName[]       = "Bodigizer XL";
const u8 gText_BodigizerXLDesc[]       = "Bodigizer XL\r\nHelps recuperate \r\nlots of Stamina.";
const u8 gText_TurbojoltName[]         = "Turbojolt";
const u8 gText_TurbojoltDesc[]         = "Turbojolt\r\nHelps recuperate Fatigue.\r\n";
const u8 gText_TurbojoltXLName[]       = "Turbojolt XL";
const u8 gText_TurbojoltXLDesc[]       = "Turbojolt XL\r\nHelps recuperate \r\nlots of Fatigue.";
const u8 gText_WineName[]              = "Wine";
const u8 gText_WineDesc[]              = "Wine\r\nMade with Grapes from the \r\nwinery or the mountain.";
const u8 gText_GrapeJuiceName[]        = "Grape Juice";
const u8 gText_GrapeJuiceDesc[]        = "Grape Juice\r\nMade with Grapes from the \r\nwinery or the mountain.";
const u8 gText_RiceBallName[]          = "Rice Ball";
const u8 gText_RiceBallDesc[]          = "Rice Ball\r\nMay be eaten as is,\r\nor used for cooking.";
const u8 gText_BreadName[]             = "Bread";
const u8 gText_BreadDesc[]             = "Bread\r\nMay be eaten as is,\r\nor used for cooking.\r\n";
const u8 gText_OilName[]               = "Oil";
const u8 gText_OilDesc[]               = "Oil\r\nMay be eaten as is,\r\nor used for cooking.";
const u8 gText_FlowerName[]            = "Flower";
const u8 gText_FlowerDesc[]            = "Flower\r\nMay be eaten as is,\r\nor used for cooking.";
const u8 gText_CurryPowderName[]       = "Curry Powder";
const u8 gText_CurryPowderDesc[]       = "Curry Powder\r\nMay be eaten as is,\r\nor used for cooking.";
const u8 gText_MuffinMixName[]         = "Muffin Mix";
const u8 gText_MuffinMixDesc[]         = "Muffin Mix\r\nMay be eaten as is,\r\nor used for cooking.";
const u8 gText_ChocolateName[]         = "Chocolate";
const u8 gText_ChocolateDesc[]         = "Chocolate\r\nMay be eaten as is,\r\nor used for cooking.";
const u8 gText_RelaxTeaLeavesName[]    = "Relax Tea Leaves";
const u8 gText_RelaxTeaLeavesDesc[]    = "Relaxation Tea Leaves\r\nPresent from the Harvest\r\nSprite's Tea Party.";
const u8 gText_SUGDWAppleName[]        = "SUGDW Apple";
const u8 gText_SUGDWAppleDesc[]        = "SUGDW Apple\r\nFull name: Super Ultra Great\r\nDelicious Wonderful Apple.";
const u8 gText_HMSGBAppleName[]        = "HMSGB Apple";
const u8 gText_HMSGBAppleDesc[]        = "HMSGB Apple\r\nStands for Hyper-Miracle \r\nSweet-Gorgeous-Beautiful.";
const u8 gText_AEPFEAppleName[]        = "AEPFE Apple";
const u8 gText_AEPFEAppleDesc[]        = "AEPFE Apple\r\nStands for Angelic-Eternal-\r\nPure-Fresh-Elegant.";
const u8 gText_BuckwheatFlourName[]    = "Buckwheat Flour";
const u8 gText_BuckwheatFlourDesc[]    = "Buckwheat Flour\r\nMay be eaten as is,\r\nor used for cooking.";
const u8 gText_WildGrapeJuiceName[]    = "Wild Grape Juice";
const u8 gText_WildGrapeJuiceDesc[]    = "A wine made with \r\nWild Grapes.\r\n";
const u8 gText_SaladName[]             = "Salad";
const u8 gText_SaladDesc[]             = "Salad\r\nMade with fresh vegetables.\r\nTo eat or use as a gift.";
const u8 gText_CurryRiceName[]         = "Curry Rice";
const u8 gText_CurryRiceDesc[]         = "Curry Rice\r\nCurry eaten with Rice.\r\nTo eat or use as a gift.";
const u8 gText_StewName[]              = "Stew";
const u8 gText_StewDesc[]              = "Stew\r\nStewed vegetables.\r\nTo eat or use as a gift.";
const u8 gText_MisoSoupName[]          = "Miso Soup";
const u8 gText_MisoSoupDesc[]          = "Miso Soup\r\nA delicious soup.\r\nTo drink or use as a gift.";
const u8 gText_StirFryName[]           = "Stir Fry";
const u8 gText_StirFryDesc[]           = "Stir Fry\r\nHealthy veggy stir fry.\r\nTo eat or use as a gift.";
const u8 gText_FriedRiceName[]         = "Fried Rice";
const u8 gText_FriedRiceDesc[]         = "Fried Rice\r\nA yummy rice dish.\r\nTo eat or use as a gift.";
const u8 gText_SavoryPancakeName[]     = "Savory Pancake";
const u8 gText_SavoryPancakeDesc[]     = "Savory Pancake\r\nMade with flour and veggies.\r\nTo eat or use as a gift.";
const u8 gText_SandwichName[]          = "Sandwich";
const u8 gText_SandwichDesc[]          = "Sandwich\r\nAn old favorite.\r\nTo eat or use as a gift.";
const u8 gText_FruitJuiceName[]        = "Fruit Juice";
const u8 gText_FruitJuiceDesc[]        = "Fruit Juice\r\nA drink made with fruits.\r\nTo drink or use as a gift.";
const u8 gText_VegetableJuiceName[]    = "Vegetable Juice";
const u8 gText_VegetableJuiceDesc[]    = "Vegetable Juice\r\nA drink made with veggies.\r\nTo drink or use as a gift.";
const u8 gText_MixedJuiceName[]        = "Mixed Juice";
const u8 gText_MixedJuiceDesc[]        = "Mixed Juice\r\nA drink made with fruits.\r\nTo drink or use as a gift.";
const u8 gText_FruitLatteName[]        = "Fruit Latte";
const u8 gText_FruitLatteDesc[]        = "Fruit Latte\r\nMade with fruits and Milk.\r\nTo eat or use as a gift.";
const u8 gText_VegetableLatteName[]    = "Vegetable Latte";
const u8 gText_VegetableLatteDesc[]    = "Vegetable Latte\r\nA drink made with  \r\nvegetables and Milk.";
const u8 gText_MixedLatteName[]        = "Mixed Latte";
const u8 gText_MixedLatteDesc[]        = "Mixed Latte\r\nA drink made with fruit, \r\nvegetables and Milk.";
const u8 gText_StrawberryMilkName[]    = "Strawberry Milk";
const u8 gText_StrawberryMilkDesc[]    = "A drink made with\r\nStrawberries and Milk.\r\nTo drink or use as a gift.";
const u8 gText_StrawberryJamName[]     = "Strawberry Jam";
const u8 gText_StrawberryJamDesc[]     = "Strawberry Jam\r\nJam made with Strawberries.\r\nTo eat or use as a gift.";
const u8 gText_TomatoJuiceName[]       = "Tomato Juice";
const u8 gText_TomatoJuiceDesc[]       = "Tomato Juice\r\nA juice made from Tomatoes.\r\nTo drink or use as a gift.";
const u8 gText_PickledTurnipName[]     = "Pickled Turnip";
const u8 gText_PickledTurnipDesc[]     = "Pickled Turnip\r\nA Turnip dish.\r\nTo eat or use as a gift.";
const u8 gText_FrenchFriesName[]       = "French Fries";
const u8 gText_FrenchFriesDesc[]       = "French Fries\r\nEveryone's favorite.\r\nTo eat or use as a gift.";
const u8 gText_PicklesName[]           = "Pickles";
const u8 gText_PicklesDesc[]           = "Pickles\r\nA Pickled Cucumber.\r\nTo eat or use as a gift.";
const u8 gText_KetchupName[]           = "Ketchup";
const u8 gText_KetchupDesc[]           = "Ketchup\r\nMade with fresh Tomatoes.\r\nTo eat or use as a gift.";
const u8 gText_PopcornName[]           = "Popcorn";
const u8 gText_PopcornDesc[]           = "Popcorn\r\nMade with fresh Corn.\r\nTo eat or use as a gift.";
const u8 gText_CornFlakesName[]        = "Corn Flakes";
const u8 gText_CornFlakesDesc[]        = "Corn Flakes\r\nGreat in the morning.\r\nTo eat or use as a gift.";
const u8 gText_BakedCornName[]         = "Baked Corn";
const u8 gText_BakedCornDesc[]         = "Baked Corn\r\nMade with fresh Corn.\r\nTo eat or use as a gift.";
const u8 gText_PineappleJuiceName[]    = "Pineapple Juice";
const u8 gText_PineappleJuiceDesc[]    = "Pineapple Juice\r\nFreshly squeezed Pinapple.\r\nTo drink or use as a gift.";
const u8 gText_PumpkinPuddingName[]    = "Pumpkin Pudding";
const u8 gText_PumpkinPuddingDesc[]    = "Pumpkin Pudding\r\nA delicious dessert.\r\nTo eat or use as a gift.";
const u8 gText_PumpkinStewName[]       = "Pumpkin Stew";
const u8 gText_PumpkinStewDesc[]       = "Pumpkin Stew\r\nSavory Pumpkin dish.\r\nTo eat or use as a gift.";
const u8 gText_HappyEggplantName[]     = "Happy Eggplant";
const u8 gText_HappyEggplantDesc[]     = "Happy Eggplant\r\nUsing Eggplant and Miso.\r\nTo eat or use as a gift.";
const u8 gText_SweetPotatoesName[]     = "Sweet Potatoes";
const u8 gText_SweetPotatoesDesc[]     = "Sweet Potatoes\r\nSweet and yummy.\r\nTo eat or use as a gift.";
const u8 gText_BakedSweetPotatoName[]  = "Baked Sweet Potato";
const u8 gText_BakedSweetPotatoDesc[]  = "Baked Sweet Potato\r\nSweet and delicious.\r\nTo eat or use as a gift.";
const u8 gText_GreensName[]            = "Greens";
const u8 gText_GreensDesc[]            = "Greens\r\nHealthy and delicious.\r\nTo eat or use as a gift.";
const u8 gText_ScrambledEggsName[]     = "Scrambled Eggs";
const u8 gText_ScrambledEggsDesc[]     = "Scrambled Eggs\r\nMade with fresh Eggs.\r\nTo eat or use as a gift.";
const u8 gText_OmeletName[]            = "Omelet";
const u8 gText_OmeletDesc[]            = "Omelet\r\nMade with fresh Eggs.\r\nTo eat or use as a gift.";
const u8 gText_OmeletRiceName[]        = "Omelet Rice";
const u8 gText_OmeletRiceDesc[]        = "Omelet Rice\r\nMade with fresh Eggs.\r\nTo eat or use as a gift.";
const u8 gText_BoiledEggName[]         = "Boiled Egg";
const u8 gText_BoiledEggDesc[]         = "Boiled Egg\r\nMade with a fresh Egg.\r\nTo eat or use as a gift.";
const u8 gText_HotMilkName[]           = "Hot Milk";
const u8 gText_HotMilkDesc[]           = "Hot Milk\r\nMade with fresh Milk.\r\nTo eat or use as a gift.";
const u8 gText_ButterName[]            = "Butter";
const u8 gText_ButterDesc[]            = "Butter\r\nMade with fresh Milk.\r\nTo eat or use as a gift.";
const u8 gText_CheeseCakeName[]        = "Cheese Cake";
const u8 gText_CheeseCakeDesc[]        = "Cheese Cake\r\nMade with fresh Cheese.\r\nTo eat or use as a gift.";
const u8 gText_CheeseFondueName[]      = "Cheese Fondue";
const u8 gText_CheeseFondueDesc[]      = "Cheese Fondue\r\nMade with fresh Cheese.\r\nTo eat or use as a gift.";
const u8 gText_ApplePieName[]          = "Apple Pie";
const u8 gText_ApplePieDesc[]          = "Apple Pie\r\nA traditional dessert.\r\nTo eat or use as a gift.";
const u8 gText_AppleJamName[]          = "Apple Jam";
const u8 gText_AppleJamDesc[]          = "Apple Jam\r\nMade with fresh Apples.\r\nTo eat or use as a gift.";
const u8 gText_AppleSouffleName[]      = "Apple Souffl?";
const u8 gText_AppleSouffleDesc[]      = "Apple Souffl?\r\nMade with fresh Apples.\r\nTo eat or use as a gift.";
const u8 gText_MushroomRiceName[]      = "Mushroom Rice";
const u8 gText_MushroomRiceDesc[]      = "Mushroom Rice\r\nMushroom-mixed Rice.\r\nTo eat or use as a gift.";
const u8 gText_BambooRiceName[]        = "Bamboo Rice";
const u8 gText_BambooRiceDesc[]        = "Bamboo Rice\r\nBamboo Shoots-mixed Rice.\r\nTo eat or use as a gift.";
const u8 gText_TruffleRiceName[]       = "Truffle Rice";
const u8 gText_TruffleRiceDesc[]       = "Truffle Rice\r\nTruffle-mixed Rice.\r\nTo eat or use as a gift.";
const u8 gText_SushiName[]             = "Sushi";
const u8 gText_SushiDesc[]             = "Sushi\r\nMade with Sashimi, Rice,\r\nand Vinegar.";
const u8 gText_JamBunName[]            = "Jam Bun";
const u8 gText_JamBunDesc[]            = "Jam Bun\r\nMade with Jam and Bread.\r\nTo eat or use as a gift.";
const u8 gText_DinnerRoleName[]        = "Dinner Role";
const u8 gText_DinnerRoleDesc[]        = "Dinner Role\r\nMade with Bread and Butter.\r\nTo eat or use as a gift.";
const u8 gText_RaisinBreadName[]       = "Raisin Bread";
const u8 gText_RaisinBreadDesc[]       = "Raisin Bread\r\nMade with Wild Grapes.\r\nTo eat or use as a gift.";
const u8 gText_GrapeJamName[]          = "Grape Jam";
const u8 gText_GrapeJamDesc[]          = "Grape Jam\r\nMade with Wild Grapes.\r\nTo eat or use as a gift.";
const u8 gText_CurryBreadName[]        = "Curry Bread";
const u8 gText_CurryBreadDesc[]        = "Curry Bread\r\nMade with Curry and Bread.\r\nTo eat or use as a gift.";
const u8 gText_SashimiName[]           = "Sashimi";
const u8 gText_SashimiDesc[]           = "Sashimi\r\nThinly sliced raw fish.\r\nTo eat or use as a gift.";
const u8 gText_GrilledFishName[]       = "Grilled Fish";
const u8 gText_GrilledFishDesc[]       = "Grilled Fish\r\nMade with fresh fish.\r\nTo eat or use as a gift.";
const u8 gText_ChirashiSushiName[]     = "Chirashi Sushi";
const u8 gText_ChirashiSushiDesc[]     = "Sashimi and other goodies\r\non top of Rice.\r\nTo eat or use as a gift.";
const u8 gText_PizzaName[]             = "Pizza";
const u8 gText_PizzaDesc[]             = "Pizza\r\nSavory Italian Pizza.\r\nTo eat or use as a gift.";
const u8 gText_NoodlesName[]           = "Noodles";
const u8 gText_NoodlesDesc[]           = "Noodles\r\nMade with Flour.\r\nTo eat or use as a gift.";
const u8 gText_CurryNoodlesName[]      = "Curry Noodles";
const u8 gText_CurryNoodlesDesc[]      = "Curry Noodles\r\nMade with Curry and Noodles.\r\nTo eat or use as a gift.";
const u8 gText_TempuraNoodlesName[]    = "Tempura Noodles";
const u8 gText_TempuraNoodlesDesc[]    = "Tempura Noodles\r\nMade with Noodles.\r\nTo eat or use as a gift.";
const u8 gText_FriedNoodlesName[]      = "Fried Noodles";
const u8 gText_FriedNoodlesDesc[]      = "Fried Noodles\r\nMade with Noodles.\r\nTo eat or use as a gift.";
const u8 gText_BuckwheatNoodlesName[]  = "Buckwheat Noodles";
const u8 gText_BuckwheatNoodlesDesc[]  = "Buckwheat Noodles\r\nNoodles made with \r\nBuckwheat flour. ";
const u8 gText_NoodlesTempuraName[]    = "Noodles w/ Tempura";
const u8 gText_NoodlesTempuraDesc[]    = "Tempura Buckwheat Noodles\r\nMade with Tempura.\r\nTo eat or use as a gift.";
const u8 gText_BuckwheatChipsName[]    = "Buckwheat Chips";
const u8 gText_BuckwheatChipsDesc[]    = "Buckwheat Chips\r\nMade with Buckwheat Flour.\r\nTo eat or use as a gift.";
const u8 gText_CookiesName[]           = "Cookies";
const u8 gText_CookiesDesc[]           = "Cookies\r\nA delicious treat.\r\nTo eat or use as a gift.";
const u8 gText_ChocolateCookiesName[]  = "Chocolate Cookies";
const u8 gText_ChocolateCookiesDesc[]  = "Chocolate Cookies\r\nA delicious treat.\r\nTo eat or use as a gift.";
const u8 gText_TempuraName[]           = "Tempura";
const u8 gText_TempuraDesc[]           = "Tempura\r\nDeep-fried.\r\nTo eat or use as a gift.";
const u8 gText_IceCreamName[]          = "Ice Cream";
const u8 gText_IceCreamDesc[]          = "Ice Cream\r\nCold and sweet.\r\nTo eat or use as a gift.";
const u8 gText_CakeName[]              = "Cake";
const u8 gText_CakeDesc[]              = "Cake\r\nA sweet treat.\r\nTo eat or use as a gift.";
const u8 gText_ChocolateCakeName[]     = "Chocolate Cake";
const u8 gText_ChocolateCakeDesc[]     = "Chocolate Cake\r\nA delicious treat.\r\nTo eat or use as a gift.";
const u8 gText_RelaxationTeaName[]     = "Relaxation Tea";
const u8 gText_RelaxationTeaDesc[]     = "Relaxation Tea \r\nAn English Tea.\r\nTo drink or use as a gift.";
const u8 gText_ToastName[]             = "Toast";
const u8 gText_ToastDesc[]             = "Toast\r\nToasted Bread.\r\nTo eat or use as a gift.";
const u8 gText_FrenchToastName[]       = "French Toast";
const u8 gText_FrenchToastDesc[]       = "French Toast\r\nMade with fresh Bread.\r\nTo eat or use as a gift.";
const u8 gText_PuddingName[]           = "Pudding";
const u8 gText_PuddingDesc[]           = "Pudding\r\nA delicious dessert.\r\nTo eat or use as a gift.";
const u8 gText_MountainStewName[]      = "Mountain Stew";
const u8 gText_MountainStewDesc[]      = "Mountain Stew\r\nA very healthy dish.\r\nTo eat or use as a gift.";
const u8 gText_MoonDumplingsName[]     = "Moon Dumplings";
const u8 gText_MoonDumplingsDesc[]     = "Moon Dumplings\r\nRoasted veggies on a stick.\r\nTo eat or use as a gift.";
const u8 gText_RiceCakeName[]          = "Rice Cake";
const u8 gText_RiceCakeDesc[]          = "Rice Cake\r\nEaten on New Year\x81\x66s day.\r\nTo eat or use as a gift.";
const u8 gText_RoastedRiceCakeName[]   = "Roasted Rice Cake";
const u8 gText_RoastedRiceCakeDesc[]   = "Roasted Rice Cake\r\nMade with Rice Cakes.\r\nTo eat or use as a gift.";
const u8 gText_ElliLeavesName[]        = "Elli Leaves";
const u8 gText_ElliLeavesDesc[]        = "Elli Leaves\r\nRecover Stamina and Fatigue.\r\nTo eat or use as a gift.";
const u8 gText_FailedDishName[]        = "Failed Dish";
const u8 gText_FailedRecipeDesc[]      = "Failure\r\nToo bad the recipe didn't\r\nwork out...";
const u8 gText_FailedDrinkName[]       = "Failed Drink";
const u8 gText_FailedPotDishName[]     = "Failed Pot Dish";
const u8 gText_FailedDessertName[]     = "Failed Dessert";
const u8 gText_FailedBreadName[]       = "Failed Bread";
const u8 gText_FailedNoodlesName[]     = "Failed Noodles";
const u8 gText_SmallFishName[]         = "Small Fish";
const u8 gText_SmallFishDesc[]         = "Small Fish\r\nCaught in ocean or river.\r\nCan be eaten or shipped.";
const u8 gText_MediumFishName[]        = "Medium Fish";
const u8 gText_MediumFishDesc[]        = "Medium Fish\r\nCaught in ocean or river.\r\nCan be eaten or shipped.";
const u8 gText_LargeFishName[]         = "Large Fish";
const u8 gText_LargeFishDesc[]         = "Large Fish\r\nCaught in ocean or river.\r\nCan be eaten or shipped.";
const u8 gText_ToastedRiceBallName[]   = "Toasted Rice Ball";
const u8 gText_ToastedRiceBallDesc[]   = "Toasted Rice Ball\r\nMade with Rice.\r\nTo eat or use as a gift.";
const u8 gText_TempuraRiceName[]       = "Tempura Rice";
const u8 gText_TempuraRiceDesc[]       = "Tempura Rice\r\nTempura with Rice.\r\nTo eat or use as a gift.";
const u8 gText_EggOverRiceName[]       = "Egg Over Rice";
const u8 gText_EggOverRiceDesc[]       = "Egg Over Rice\r\nMade with Eggs and Rice.\r\nTo eat or use as a gift.";
const u8 gText_RiceGruelName[]         = "Rice Gruel";
const u8 gText_RiceGruelDesc[]         = "Rice Gruel\r\nA soft Rice soup.\r\nTo eat or use as a gift.";
const u8 gText_PancakesName[]          = "Pancakes";
const u8 gText_PancakesDesc[]          = "Pancakes\r\nMade with Flour.\r\nTo eat or use as a gift.";
const u8 gText_FishSticksName[]        = "Fish Sticks";
const u8 gText_FishSticksDesc[]        = "Fish Sticks\r\nMade with Fish.\r\nTo eat or use as a gift.";
const u8 gText_CandiedPotatoName[]     = "Candied Potato";
const u8 gText_CandiedPotatoDesc[]     = "Candied Potato\r\nPotato with sweet glaze.\r\nTo eat or use as a gift.";
const u8 gText_PotatoPancakesName[]    = "Potato Pancakes";
const u8 gText_PotatoPancakesDesc[]    = "Potato Pancakes\r\nMade with Potatoes.\r\nTo eat or use as a gift.\0";

const Food gFoods[] = {
    [0] = {
        .name = gText_TurnipName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 457,
        .desc = gText_TurnipDesc
    },

    [1] = {
        .name = gText_PotatoName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 347,
        .desc = gText_PotatoDesc,
    },

    [2] = {
        .name = gText_CucumberName,
        .unk_4 = FALSE,
        .unk_5 = 4,
        .unk_6 = -1,
        .unk_8 = 113,
        .desc = gText_CucumberDesc,
    },

    [3] = {
        .name = gText_StrawberryName,
        .unk_4 = FALSE,
        .unk_5 = 5,
        .unk_6 = -2,
        .unk_8 = 430,
        .desc = gText_StrawberryDesc,
    },

    [4] = {
        .name = gText_CabbageName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 84,
        .desc = gText_CabbageDesc,
    },

    [5] = {
        .name = gText_TomatoName,
        .unk_4 = FALSE,
        .unk_5 = 4,
        .unk_6 = -1,
        .unk_8 = 448,
        .desc = gText_TomatoDesc,
    },

    [6] = {
        .name = gText_CornName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 109,
        .desc = gText_CornDesc,
    },

    [7] = {
        .name = gText_OnionName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 319,
        .desc = gText_OnionDesc,
    },

    [8] = {
        .name = gText_PumpkinName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 354,
        .desc = gText_PumpkinDesc,
    },

    [9] = {
        .name = gText_PineappleName,
        .unk_4 = FALSE,
        .unk_5 = 5,
        .unk_6 = -2,
        .unk_8 = 334,
        .desc = gText_PineappleDesc,
    },

    [10] = {
        .name = gText_EggplantName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 132,
        .desc = gText_EggplantDesc,
    },

    [11] = {
        .name = gText_CarrotName,
        .unk_4 = FALSE,
        .unk_5 = 4,
        .unk_6 = -1,
        .unk_8 = 89,
        .desc = gText_CarrotDesc,
    },

    [12] = {
        .name = gText_SweetPotatoName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 439,
        .desc = gText_SweetPotatoDesc,
    },

    [13] = {
        .name = gText_SpinachName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 423,
        .desc = gText_SpinachDesc,
    },

    [14] = {
        .name = gText_GreenPepperName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 218,
        .desc = gText_GreenPepperDesc,
    },

    [15] = {
        .name = gText_RegularQualityEggName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 125,
        .desc = gText_RegularQualityEggDesc,
    },

    [16] = {
        .name = gText_GoodQualityEggName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 126,
        .desc = gText_GoodQualityEggDesc,
    },

    [17] = {
        .name = gText_HighQualityEggName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 127,
        .desc = gText_HighQualityEggDesc,
    },

    [18] = {
        .name = gText_GoldenEggName,
        .unk_4 = FALSE,
        .unk_5 = 4,
        .unk_6 = -2,
        .unk_8 = 128,
        .desc = gText_GoldenEggDesc,
    },

    [19] = {
        .name = gText_PEggName,
        .unk_4 = FALSE,
        .unk_5 = 5,
        .unk_6 = -3,
        .unk_8 = 129,
        .desc = gText_PEggDesc,
    },

    [20] = {
        .name = gText_XEggName,
        .unk_4 = FALSE,
        .unk_5 = 6,
        .unk_6 = -4,
        .unk_8 = 130,
        .desc = gText_XEggDesc,
    },

    [21] = {
        .name = gText_SpaBoiledEggName,
        .unk_4 = FALSE,
        .unk_5 = 4,
        .unk_6 = -2,
        .unk_8 = 131,
        .desc = gText_SpaBoiledEggDesc,
    },

    [22] = {
        .name = gText_MayonnaiseSName,
        .unk_4 = FALSE,
        .unk_5 = 1,
        .unk_6 = -1,
        .unk_8 = 284,
        .desc = gText_MayonnaiseSDesc,
    },

    [23] = {
        .name = gText_MayonnaiseMName,
        .unk_4 = FALSE,
        .unk_5 = 2,
        .unk_6 = -1,
        .unk_8 = 285,
        .desc = gText_MayonnaiseMDesc,
    },

    [24] = {
        .name = gText_MayonnaiseLName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 286,
        .desc = gText_MayonnaiseLDesc,
    },

    [25] = {
        .name = gText_MayonnaiseGName,
        .unk_4 = FALSE,
        .unk_5 = 4,
        .unk_6 = -2,
        .unk_8 = 287,
        .desc = gText_MayonnaiseGDesc,
    },

    [26] = {
        .name = gText_MayonnaisePName,
        .unk_4 = FALSE,
        .unk_5 = 5,
        .unk_6 = -3,
        .unk_8 = 288,
        .desc = gText_MayonnaisePDesc,
    },

    [27] = {
        .name = gText_MayonnaiseXName,
        .unk_4 = FALSE,
        .unk_5 = 6,
        .unk_6 = -3,
        .unk_8 = 289,
        .desc = gText_MayonnaiseXDesc,
    },

    [28] = {
        .name = gText_MilkSName,
        .unk_4 = TRUE,
        .unk_5 = 2,
        .unk_6 = -2,
        .unk_8 = 296,
        .desc = gText_MilkSDesc,
    },

    [29] = {
        .name = gText_MilkMName,
        .unk_4 = TRUE,
        .unk_5 = 3,
        .unk_6 = -2,
        .unk_8 = 293,
        .desc = gText_MilkMDesc,
    },

    [30] = {
        .name = gText_MilkLName,
        .unk_4 = TRUE,
        .unk_5 = 4,
        .unk_6 = -2,
        .unk_8 = 292,
        .desc = gText_MilkLDesc,
    },

    [31] = {
        .name = gText_MilkGName,
        .unk_4 = TRUE,
        .unk_5 = 5,
        .unk_6 = -3,
        .unk_8 = 291,
        .desc = gText_MilkGDesc,
    },

    [32] = {
        .name = gText_MilkPName,
        .unk_4 = TRUE,
        .unk_5 = 6,
        .unk_6 = -4,
        .unk_8 = 295,
        .desc = gText_MilkPDesc,
    },

    [33] = {
        .name = gText_MilkXName,
        .unk_4 = TRUE,
        .unk_5 = 7,
        .unk_6 = -5,
        .unk_8 = 297,
        .desc = gText_MilkXDesc,
    },

    [34] = {
        .name = gText_CheeseSName,
        .unk_4 = FALSE,
        .unk_5 = 5,
        .unk_6 = -1,
        .unk_8 = 92,
        .desc = gText_CheeseSDesc,
    },

    [35] = {
        .name = gText_CheeseMName,
        .unk_4 = FALSE,
        .unk_5 = 6,
        .unk_6 = -1,
        .unk_8 = 93,
        .desc = gText_CheeseMDesc,
    },

    [36] = {
        .name = gText_CheeseLName,
        .unk_4 = FALSE,
        .unk_5 = 7,
        .unk_6 = -1,
        .unk_8 = 94,
        .desc = gText_CheeseLDesc,
    },

    [37] = {
        .name = gText_CheeseGName,
        .unk_4 = FALSE,
        .unk_5 = 8,
        .unk_6 = -2,
        .unk_8 = 95,
        .desc = gText_CheeseGDesc,
    },

    [38] = {
        .name = gText_CheesePName,
        .unk_4 = FALSE,
        .unk_5 = 9,
        .unk_6 = -3,
        .unk_8 = 96,
        .desc = gText_CheesePDesc,
    },

    [39] = {
        .name = gText_CheeseXName,
        .unk_4 = FALSE,
        .unk_5 = 10,
        .unk_6 = -4,
        .unk_8 = 97,
        .desc = gText_CheeseXDesc,
    },

    [40] = {
        .name = gText_AppleName,
        .unk_4 = FALSE,
        .unk_5 = 2,
        .unk_6 = -2,
        .unk_8 = 8,
        .desc = gText_AppleDesc,
    },

    [41] = {
        .name = gText_HoneyName,
        .unk_4 = FALSE,
        .unk_5 = 2,
        .unk_6 = -2,
        .unk_8 = 242,
        .desc = gText_HoneyDesc,
    },

    [42] = {
        .name = gText_BambooShootName,
        .unk_4 = FALSE,
        .unk_5 = 10,
        .unk_6 = -1,
        .unk_8 = 50,
        .desc = gText_BambooShootDesc,
    },

    [43] = {
        .name = gText_WildGrapesName,
        .unk_4 = FALSE,
        .unk_5 = 10,
        .unk_6 = -2,
        .unk_8 = 309,
        .desc = gText_WildGrapesDesc,
    },

    [44] = {
        .name = gText_MushroomName,
        .unk_4 = FALSE,
        .unk_5 = 10,
        .unk_6 = -1,
        .unk_8 = 306,
        .desc = gText_MushroomDesc,
    },

    [45] = {
        .name = gText_PoisonousMushroomName,
        .unk_4 = FALSE,
        .unk_5 = -50,
        .unk_6 = 10,
        .unk_8 = 245,
        .desc = gText_PoisonousMushroomDesc,
    },

    [46] = {
        .name = gText_TruffleName,
        .unk_4 = FALSE,
        .unk_5 = 20,
        .unk_6 = -1,
        .unk_8 = 281,
        .desc = gText_TruffleDesc,
    },

    [47] = {
        .name = gText_BlueGrassName,
        .unk_4 = FALSE,
        .unk_5 = 10,
        .unk_6 = -1,
        .unk_8 = 65,
        .desc = gText_BlueGrassDesc,
    },

    [48] = {
        .name = gText_GreenGrassName,
        .unk_4 = FALSE,
        .unk_5 = 0,
        .unk_6 = -2,
        .unk_8 = 216,
        .desc = gText_GreenGrassDesc,
    },

    [49] = {
        .name = gText_RedGrassName,
        .unk_4 = FALSE,
        .unk_5 = -10,
        .unk_6 = 5,
        .unk_8 = 376,
        .desc = gText_RedGrassDesc,
    },

    [50] = {
        .name = gText_YellowGrassName,
        .unk_4 = FALSE,
        .unk_5 = -5,
        .unk_6 = -5,
        .unk_8 = 490,
        .desc = gText_YellowGrassDesc,
    },

    [51] = {
        .name = gText_OrangeGrassName,
        .unk_4 = FALSE,
        .unk_5 = 0,
        .unk_6 = 0,
        .unk_8 = 322,
        .desc = gText_OrangeGrassDesc,
    },

    [52] = {
        .name = gText_PurpleGrassName,
        .unk_4 = FALSE,
        .unk_5 = 5,
        .unk_6 = -2,
        .unk_8 = 357,
        .desc = gText_PurpleGrassDesc,
    },

    [53] = {
        .name = gText_IndigoGrassName,
        .unk_4 = FALSE,
        .unk_5 = 20,
        .unk_6 = -1,
        .unk_8 = 256,
        .desc = gText_IndigoGrassDesc,
    },

    [54] = {
        .name = gText_BlackGrassName,
        .unk_4 = FALSE,
        .unk_5 = 5,
        .unk_6 = -5,
        .unk_8 = 63,
        .desc = gText_BlackGrassDesc,
    },

    [55] = {
        .name = gText_WhiteGrassName,
        .unk_4 = FALSE,
        .unk_5 = 10,
        .unk_6 = -10,
        .unk_8 = 473,
        .desc = gText_WhiteGrassDesc,
    },

    [56] = {
        .name = gText_QueenoftheNightName,
        .unk_4 = FALSE,
        .unk_5 = 0,
        .unk_6 = 0,
        .unk_8 = 58,
        .desc = gText_QueenoftheNightDesc,
    },

    [57] = {
        .name = gText_BodigizerName,
        .unk_4 = TRUE,
        .unk_5 = 50,
        .unk_6 = -1,
        .unk_8 = 349,
        .desc = gText_BodigizerDesc,
    },

    [58] = {
        .name = gText_BodigizerXLName,
        .unk_4 = TRUE,
        .unk_5 = 100,
        .unk_6 = -1,
        .unk_8 = 350,
        .desc = gText_BodigizerXLDesc,
    },

    [59] = {
        .name = gText_TurbojoltName,
        .unk_4 = TRUE,
        .unk_5 = 0,
        .unk_6 = -20,
        .unk_8 = 146,
        .desc = gText_TurbojoltDesc,
    },

    [60] = {
        .name = gText_TurbojoltXLName,
        .unk_4 = TRUE,
        .unk_5 = 0,
        .unk_6 = -50,
        .unk_8 = 147,
        .desc = gText_TurbojoltXLDesc,
    },

    [61] = {
        .name = gText_WineName,
        .unk_4 = TRUE,
        .unk_5 = 1,
        .unk_6 = -5,
        .unk_8 = 475,
        .desc = gText_WineDesc,
    },

    [62] = {
        .name = gText_GrapeJuiceName,
        .unk_4 = TRUE,
        .unk_5 = 5,
        .unk_6 = -5,
        .unk_8 = 221,
        .desc = gText_GrapeJuiceDesc,
    },

    [63] = {
        .name = gText_RiceBallName,
        .unk_4 = FALSE,
        .unk_5 = 2,
        .unk_6 = -1,
        .unk_8 = 380,
        .desc = gText_RiceBallDesc,
    },

    [64] = {
        .name = gText_BreadName,
        .unk_4 = FALSE,
        .unk_5 = 2,
        .unk_6 = -1,
        .unk_8 = 78,
        .desc = gText_BreadDesc,
    },

    [65] = {
        .name = gText_OilName,
        .unk_4 = FALSE,
        .unk_5 = 1,
        .unk_6 = 1,
        .unk_8 = 315,
        .desc = gText_OilDesc,
    },

    [66] = {
        .name = gText_FlowerName,
        .unk_4 = FALSE,
        .unk_5 = 1,
        .unk_6 = 1,
        .unk_8 = 163,
        .desc = gText_FlowerDesc,
    },

    [67] = {
        .name = gText_CurryPowderName,
        .unk_4 = FALSE,
        .unk_5 = 1,
        .unk_6 = 1,
        .unk_8 = 118,
        .desc = gText_CurryPowderDesc,
    },

    [68] = {
        .name = gText_MuffinMixName,
        .unk_4 = FALSE,
        .unk_5 = 1,
        .unk_6 = 1,
        .unk_8 = 122,
        .desc = gText_MuffinMixDesc,
    },

    [69] = {
        .name = gText_ChocolateName,
        .unk_4 = FALSE,
        .unk_5 = 2,
        .unk_6 = -2,
        .unk_8 = 102,
        .desc = gText_ChocolateDesc,
    },

    [70] = {
        .name = gText_RelaxTeaLeavesName,
        .unk_4 = FALSE,
        .unk_5 = 2,
        .unk_6 = -3,
        .unk_8 = 379,
        .desc = gText_RelaxTeaLeavesDesc,
    },

    [71] = {
        .name = gText_SUGDWAppleName,
        .unk_4 = FALSE,
        .unk_5 = 2,
        .unk_6 = -2,
        .unk_8 = 435,
        .desc = gText_SUGDWAppleDesc,
    },

    [72] = {
        .name = gText_HMSGBAppleName,
        .unk_4 = FALSE,
        .unk_5 = 2,
        .unk_6 = -2,
        .unk_8 = 233,
        .desc = gText_HMSGBAppleDesc,
    },

    [73] = {
        .name = gText_AEPFEAppleName,
        .unk_4 = FALSE,
        .unk_5 = 2,
        .unk_6 = -2,
        .unk_8 = 1,
        .desc = gText_AEPFEAppleDesc,
    },

    [74] = {
        .name = gText_BuckwheatFlourName,
        .unk_4 = FALSE,
        .unk_5 = 1,
        .unk_6 = 1,
        .unk_8 = 81,
        .desc = gText_BuckwheatFlourDesc,
    },

    [75] = {
        .name = gText_WildGrapeJuiceName,
        .unk_4 = TRUE,
        .unk_5 = 1,
        .unk_6 = -40,
        .unk_8 = 214,
        .desc = gText_WildGrapeJuiceDesc,
    },

    [76] = {
        .name = gText_SaladName,
        .unk_4 = FALSE,
        .unk_5 = 20,
        .unk_6 = -5,
        .unk_8 = 396,
        .desc = gText_SaladDesc,
    },

    [77] = {
        .name = gText_CurryRiceName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -2,
        .unk_8 = 115,
        .desc = gText_CurryRiceDesc,
    },

    [78] = {
        .name = gText_StewName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -2,
        .unk_8 = 427,
        .desc = gText_StewDesc,
    },

    [79] = {
        .name = gText_MisoSoupName,
        .unk_4 = FALSE,
        .unk_5 = 5,
        .unk_6 = -3,
        .unk_8 = 298,
        .desc = gText_MisoSoupDesc,
    },

    [80] = {
        .name = gText_StirFryName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -1,
        .unk_8 = 206,
        .desc = gText_StirFryDesc,
    },

    [81] = {
        .name = gText_FriedRiceName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -1,
        .unk_8 = 388,
        .desc = gText_FriedRiceDesc,
    },

    [82] = {
        .name = gText_SavoryPancakeName,
        .unk_4 = FALSE,
        .unk_5 = 50,
        .unk_6 = -1,
        .unk_8 = 316,
        .desc = gText_SavoryPancakeDesc,
    },

    [83] = {
        .name = gText_SandwichName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -5,
        .unk_8 = 398,
        .desc = gText_SandwichDesc,
    },

    [84] = {
        .name = gText_FruitJuiceName,
        .unk_4 = TRUE,
        .unk_5 = 20,
        .unk_6 = -15,
        .unk_8 = 202,
        .desc = gText_FruitJuiceDesc,
    },

    [85] = {
        .name = gText_VegetableJuiceName,
        .unk_4 = TRUE,
        .unk_5 = 20,
        .unk_6 = -20,
        .unk_8 = 459,
        .desc = gText_VegetableJuiceDesc,
    },

    [86] = {
        .name = gText_MixedJuiceName,
        .unk_4 = TRUE,
        .unk_5 = 50,
        .unk_6 = -30,
        .unk_8 = 300,
        .desc = gText_MixedJuiceDesc,
    },

    [87] = {
        .name = gText_FruitLatteName,
        .unk_4 = TRUE,
        .unk_5 = 30,
        .unk_6 = -15,
        .unk_8 = 203,
        .desc = gText_FruitLatteDesc,
    },

    [88] = {
        .name = gText_VegetableLatteName,
        .unk_4 = TRUE,
        .unk_5 = 30,
        .unk_6 = -20,
        .unk_8 = 460,
        .desc = gText_VegetableLatteDesc,
    },

    [89] = {
        .name = gText_MixedLatteName,
        .unk_4 = TRUE,
        .unk_5 = 60,
        .unk_6 = -20,
        .unk_8 = 301,
        .desc = gText_MixedLatteDesc,
    },

    [90] = {
        .name = gText_StrawberryMilkName,
        .unk_4 = TRUE,
        .unk_5 = 30,
        .unk_6 = -15,
        .unk_8 = 432,
        .desc = gText_StrawberryMilkDesc,
    },

    [91] = {
        .name = gText_StrawberryJamName,
        .unk_4 = FALSE,
        .unk_5 = 5,
        .unk_6 = -5,
        .unk_8 = 431,
        .desc = gText_StrawberryJamDesc,
    },

    [92] = {
        .name = gText_TomatoJuiceName,
        .unk_4 = TRUE,
        .unk_5 = 20,
        .unk_6 = -20,
        .unk_8 = 449,
        .desc = gText_TomatoJuiceDesc,
    },

    [93] = {
        .name = gText_PickledTurnipName,
        .unk_4 = FALSE,
        .unk_5 = 20,
        .unk_6 = -4,
        .unk_8 = 333,
        .desc = gText_PickledTurnipDesc,
    },

    [94] = {
        .name = gText_FrenchFriesName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -2,
        .unk_8 = 205,
        .desc = gText_FrenchFriesDesc,
    },

    [95] = {
        .name = gText_PicklesName,
        .unk_4 = FALSE,
        .unk_5 = 20,
        .unk_6 = -7,
        .unk_8 = 332,
        .desc = gText_PicklesDesc,
    },

    [96] = {
        .name = gText_KetchupName,
        .unk_4 = FALSE,
        .unk_5 = 1,
        .unk_6 = 0,
        .unk_8 = 264,
        .desc = gText_KetchupDesc,
    },

    [97] = {
        .name = gText_PopcornName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -1,
        .unk_8 = 343,
        .desc = gText_PopcornDesc,
    },

    [98] = {
        .name = gText_CornFlakesName,
        .unk_4 = FALSE,
        .unk_5 = 10,
        .unk_6 = -2,
        .unk_8 = 110,
        .desc = gText_CornFlakesDesc,
    },

    [99] = {
        .name = gText_BakedCornName,
        .unk_4 = FALSE,
        .unk_5 = 7,
        .unk_6 = -1,
        .unk_8 = 384,
        .desc = gText_BakedCornDesc,
    },

    [100] = {
        .name = gText_PineappleJuiceName,
        .unk_4 = TRUE,
        .unk_5 = 5,
        .unk_6 = -15,
        .unk_8 = 359,
        .desc = gText_PineappleJuiceDesc,
    },

    [101] = {
        .name = gText_PumpkinPuddingName,
        .unk_4 = FALSE,
        .unk_5 = 50,
        .unk_6 = -10,
        .unk_8 = 355,
        .desc = gText_PumpkinPuddingDesc,
    },

    [102] = {
        .name = gText_PumpkinStewName,
        .unk_4 = FALSE,
        .unk_5 = 8,
        .unk_6 = -1,
        .unk_8 = 70,
        .desc = gText_PumpkinStewDesc,
    },

    [103] = {
        .name = gText_HappyEggplantName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -2,
        .unk_8 = 133,
        .desc = gText_HappyEggplantDesc,
    },

    [104] = {
        .name = gText_SweetPotatoesName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -5,
        .unk_8 = 441,
        .desc = gText_SweetPotatoesDesc,
    },

    [105] = {
        .name = gText_BakedSweetPotatoName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -5,
        .unk_8 = 387,
        .desc = gText_BakedSweetPotatoDesc,
    },

    [106] = {
        .name = gText_GreensName,
        .unk_4 = FALSE,
        .unk_5 = 20,
        .unk_6 = -1,
        .unk_8 = 314,
        .desc = gText_GreensDesc,
    },

    [107] = {
        .name = gText_ScrambledEggsName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -3,
        .unk_8 = 385,
        .desc = gText_ScrambledEggsDesc,
    },

    [108] = {
        .name = gText_OmeletName,
        .unk_4 = FALSE,
        .unk_5 = 50,
        .unk_6 = -4,
        .unk_8 = 317,
        .desc = gText_OmeletDesc,
    },

    [109] = {
        .name = gText_OmeletRiceName,
        .unk_4 = FALSE,
        .unk_5 = 60,
        .unk_6 = -4,
        .unk_8 = 318,
        .desc = gText_OmeletRiceDesc,
    },

    [110] = {
        .name = gText_BoiledEggName,
        .unk_4 = FALSE,
        .unk_5 = 20,
        .unk_6 = -2,
        .unk_8 = 68,
        .desc = gText_BoiledEggDesc,
    },

    [111] = {
        .name = gText_HotMilkName,
        .unk_4 = TRUE,
        .unk_5 = 20,
        .unk_6 = -10,
        .unk_8 = 244,
        .desc = gText_HotMilkDesc,
    },

    [112] = {
        .name = gText_ButterName,
        .unk_4 = FALSE,
        .unk_5 = 1,
        .unk_6 = 0,
        .unk_8 = 82,
        .desc = gText_ButterDesc,
    },

    [113] = {
        .name = gText_CheeseCakeName,
        .unk_4 = FALSE,
        .unk_5 = 50,
        .unk_6 = -5,
        .unk_8 = 98,
        .desc = gText_CheeseCakeDesc,
    },

    [114] = {
        .name = gText_CheeseFondueName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -3,
        .unk_8 = 99,
        .desc = gText_CheeseFondueDesc,
    },

    [115] = {
        .name = gText_ApplePieName,
        .unk_4 = FALSE,
        .unk_5 = 50,
        .unk_6 = -8,
        .unk_8 = 11,
        .desc = gText_ApplePieDesc,
    },

    [116] = {
        .name = gText_AppleJamName,
        .unk_4 = FALSE,
        .unk_5 = 5,
        .unk_6 = -5,
        .unk_8 = 10,
        .desc = gText_AppleJamDesc,
    },

    [117] = {
        .name = gText_AppleSouffleName,
        .unk_4 = FALSE,
        .unk_5 = 8,
        .unk_6 = -2,
        .unk_8 = 383,
        .desc = gText_AppleSouffleDesc,
    },

    [118] = {
        .name = gText_MushroomRiceName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -1,
        .unk_8 = 308,
        .desc = gText_MushroomRiceDesc,
    },

    [119] = {
        .name = gText_BambooRiceName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -1,
        .unk_8 = 442,
        .desc = gText_BambooRiceDesc,
    },

    [120] = {
        .name = gText_TruffleRiceName,
        .unk_4 = FALSE,
        .unk_5 = 60,
        .unk_6 = -1,
        .unk_8 = 283,
        .desc = gText_TruffleRiceDesc,
    },

    [121] = {
        .name = gText_SushiName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -1,
        .unk_8 = 438,
        .desc = gText_SushiDesc,
    },

    [122] = {
        .name = gText_JamBunName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -5,
        .unk_8 = 260,
        .desc = gText_JamBunDesc,
    },

    [123] = {
        .name = gText_DinnerRoleName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -2,
        .unk_8 = 83,
        .desc = gText_DinnerRoleDesc,
    },

    [124] = {
        .name = gText_RaisinBreadName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -4,
        .unk_8 = 212,
        .desc = gText_RaisinBreadDesc,
    },

    [125] = {
        .name = gText_GrapeJamName,
        .unk_4 = FALSE,
        .unk_5 = 5,
        .unk_6 = -5,
        .unk_8 = 213,
        .desc = gText_GrapeJamDesc,
    },

    [126] = {
        .name = gText_CurryBreadName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -2,
        .unk_8 = 116,
        .desc = gText_CurryBreadDesc,
    },

    [127] = {
        .name = gText_SashimiName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -3,
        .unk_8 = 399,
        .desc = gText_SashimiDesc,
    },

    [128] = {
        .name = gText_GrilledFishName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -1,
        .unk_8 = 220,
        .desc = gText_GrilledFishDesc,
    },

    [129] = {
        .name = gText_ChirashiSushiName,
        .unk_4 = FALSE,
        .unk_5 = 50,
        .unk_6 = -1,
        .unk_8 = 101,
        .desc = gText_ChirashiSushiDesc,
    },

    [130] = {
        .name = gText_PizzaName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -1,
        .unk_8 = 341,
        .desc = gText_PizzaDesc,
    },

    [131] = {
        .name = gText_NoodlesName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -3,
        .unk_8 = 312,
        .desc = gText_NoodlesDesc,
    },

    [132] = {
        .name = gText_CurryNoodlesName,
        .unk_4 = FALSE,
        .unk_5 = 60,
        .unk_6 = -3,
        .unk_8 = 117,
        .desc = gText_CurryNoodlesDesc,
    },

    [133] = {
        .name = gText_TempuraNoodlesName,
        .unk_4 = FALSE,
        .unk_5 = 60,
        .unk_6 = -3,
        .unk_8 = 445,
        .desc = gText_TempuraNoodlesDesc,
    },

    [134] = {
        .name = gText_FriedNoodlesName,
        .unk_4 = FALSE,
        .unk_5 = 60,
        .unk_6 = -2,
        .unk_8 = 386,
        .desc = gText_FriedNoodlesDesc,
    },

    [135] = {
        .name = gText_BuckwheatNoodlesName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -3,
        .unk_8 = 492,
        .desc = gText_BuckwheatNoodlesDesc,
    },

    [136] = {
        .name = gText_NoodlesTempuraName,
        .unk_4 = FALSE,
        .unk_5 = 60,
        .unk_6 = -3,
        .unk_8 = 446,
        .desc = gText_NoodlesTempuraDesc,
    },

    [137] = {
        .name = gText_FriedNoodlesName,
        .unk_4 = FALSE,
        .unk_5 = 60,
        .unk_6 = -2,
        .unk_8 = 391,
        .desc = gText_FriedNoodlesDesc,
    },

    [138] = {
        .name = gText_BuckwheatChipsName,
        .unk_4 = FALSE,
        .unk_5 = 15,
        .unk_6 = -2,
        .unk_8 = 421,
        .desc = gText_BuckwheatChipsDesc,
    },

    [139] = {
        .name = gText_CookiesName,
        .unk_4 = FALSE,
        .unk_5 = 15,
        .unk_6 = -5,
        .unk_8 = 107,
        .desc = gText_CookiesDesc,
    },

    [140] = {
        .name = gText_ChocolateCookiesName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -5,
        .unk_8 = 104,
        .desc = gText_ChocolateCookiesDesc,
    },

    [141] = {
        .name = gText_TempuraName,
        .unk_4 = FALSE,
        .unk_5 = 20,
        .unk_6 = -2,
        .unk_8 = 443,
        .desc = gText_TempuraDesc,
    },

    [142] = {
        .name = gText_IceCreamName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -20,
        .unk_8 = 248,
        .desc = gText_IceCreamDesc,
    },

    [143] = {
        .name = gText_CakeName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -8,
        .unk_8 = 86,
        .desc = gText_CakeDesc,
    },

    [144] = {
        .name = gText_ChocolateCakeName,
        .unk_4 = FALSE,
        .unk_5 = 70,
        .unk_6 = -8,
        .unk_8 = 103,
        .desc = gText_ChocolateCakeDesc,
    },

    [145] = {
        .name = gText_RelaxationTeaName,
        .unk_4 = TRUE,
        .unk_5 = 50,
        .unk_6 = -50,
        .unk_8 = 378,
        .desc = gText_RelaxationTeaDesc,
    },

    [146] = {
        .name = gText_ToastName,
        .unk_4 = FALSE,
        .unk_5 = 7,
        .unk_6 = -1,
        .unk_8 = 447,
        .desc = gText_ToastDesc,
    },

    [147] = {
        .name = gText_FrenchToastName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -2,
        .unk_8 = 168,
        .desc = gText_FrenchToastDesc,
    },

    [148] = {
        .name = gText_PuddingName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -8,
        .unk_8 = 353,
        .desc = gText_PuddingDesc,
    },

    [149] = {
        .name = gText_MountainStewName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -1,
        .unk_8 = 100,
        .desc = gText_MountainStewDesc,
    },

    [150] = {
        .name = gText_MoonDumplingsName,
        .unk_4 = FALSE,
        .unk_5 = 40,
        .unk_6 = -3,
        .unk_8 = 119,
        .desc = gText_MoonDumplingsDesc,
    },

    [151] = {
        .name = gText_RiceCakeName,
        .unk_4 = FALSE,
        .unk_5 = 2,
        .unk_6 = -1,
        .unk_8 = 381,
        .desc = gText_RiceCakeDesc,
    },

    [152] = {
        .name = gText_RoastedRiceCakeName,
        .unk_4 = FALSE,
        .unk_5 = 10,
        .unk_6 = -2,
        .unk_8 = 390,
        .desc = gText_RoastedRiceCakeDesc,
    },

    [153] = {
        .name = gText_ElliLeavesName,
        .unk_4 = FALSE,
        .unk_5 = 100,
        .unk_6 = -50,
        .unk_8 = 138,
        .desc = gText_ElliLeavesDesc,
    },

    [154] = {
        .name = gText_FailedDishName,
        .unk_4 = FALSE,
        .unk_5 = -10,
        .unk_6 = 10,
        .unk_8 = 140,
        .desc = gText_FailedRecipeDesc,
    },

    [155] = {
        .name = gText_FailedDrinkName,
        .unk_4 = TRUE,
        .unk_5 = -10,
        .unk_6 = 10,
        .unk_8 = 143,
        .desc = gText_FailedRecipeDesc,
    },

    [156] = {
        .name = gText_FailedPotDishName,
        .unk_4 = FALSE,
        .unk_5 = -10,
        .unk_6 = 10,
        .unk_8 = 145,
        .desc = gText_FailedRecipeDesc,
    },

    [157] = {
        .name = gText_FailedDessertName,
        .unk_4 = FALSE,
        .unk_5 = -10,
        .unk_6 = 10,
        .unk_8 = 142,
        .desc = gText_FailedRecipeDesc,
    },

    [158] = {
        .name = gText_FailedBreadName,
        .unk_4 = FALSE,
        .unk_5 = -10,
        .unk_6 = 10,
        .unk_8 = 141,
        .desc = gText_FailedRecipeDesc,
    },

    [159] = {
        .name = gText_FailedNoodlesName,
        .unk_4 = FALSE,
        .unk_5 = -10,
        .unk_6 = 10,
        .unk_8 = 144,
        .desc = gText_FailedRecipeDesc,
    },

    [160] = {
        .name = gText_SmallFishName,
        .unk_4 = FALSE,
        .unk_5 = 2,
        .unk_6 = -1,
        .unk_8 = 159,
        .desc = gText_SmallFishDesc,
    },

    [161] = {
        .name = gText_MediumFishName,
        .unk_4 = FALSE,
        .unk_5 = 3,
        .unk_6 = -1,
        .unk_8 = 158,
        .desc = gText_MediumFishDesc,
    },

    [162] = {
        .name = gText_LargeFishName,
        .unk_4 = FALSE,
        .unk_5 = 4,
        .unk_6 = -1,
        .unk_8 = 157,
        .desc = gText_LargeFishDesc,
    },

    [163] = {
        .name = gText_ToastedRiceBallName,
        .unk_4 = FALSE,
        .unk_5 = 5,
        .unk_6 = -1,
        .unk_8 = 389,
        .desc = gText_ToastedRiceBallDesc,
    },

    [164] = {
        .name = gText_TempuraRiceName,
        .unk_4 = FALSE,
        .unk_5 = 30,
        .unk_6 = -2,
        .unk_8 = 444,
        .desc = gText_TempuraRiceDesc,
    },

    [165] = {
        .name = gText_EggOverRiceName,
        .unk_4 = FALSE,
        .unk_5 = 20,
        .unk_6 = -1,
        .unk_8 = 135,
        .desc = gText_EggOverRiceDesc,
    },

    [166] = {
        .name = gText_RiceGruelName,
        .unk_4 = FALSE,
        .unk_5 = 5,
        .unk_6 = -3,
        .unk_8 = 382,
        .desc = gText_RiceGruelDesc,
    },

    [167] = {
        .name = gText_PancakesName,
        .unk_4 = FALSE,
        .unk_5 = 20,
        .unk_6 = -3,
        .unk_8 = 243,
        .desc = gText_PancakesDesc,
    },

    [168] = {
        .name = gText_FishSticksName,
        .unk_4 = FALSE,
        .unk_5 = 5,
        .unk_6 = -1,
        .unk_8 = 69,
        .desc = gText_FishSticksDesc,
    },

    [169] = {
        .name = gText_CandiedPotatoName,
        .unk_4 = FALSE,
        .unk_5 = 8,
        .unk_6 = -1,
        .unk_8 = 88,
        .desc = gText_CandiedPotatoDesc,
    },

    [170] = {
        .name = gText_PotatoPancakesName,
        .unk_4 = FALSE,
        .unk_5 = 20,
        .unk_6 = -2,
        .unk_8 = 112,
        .desc = gText_PotatoPancakesDesc,
    }
};
