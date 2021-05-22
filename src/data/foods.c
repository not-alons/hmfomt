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
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 457,
        .desc = gText_TurnipDesc
    },

    [1] = {
        .name = gText_PotatoName,
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 347,
        .desc = gText_PotatoDesc,
    },

    [2] = {
        .name = gText_CucumberName,
        .isDrink = FALSE,
        .stamina = 4,
        .fatigue = -1,
        .icon = 113,
        .desc = gText_CucumberDesc,
    },

    [3] = {
        .name = gText_StrawberryName,
        .isDrink = FALSE,
        .stamina = 5,
        .fatigue = -2,
        .icon = 430,
        .desc = gText_StrawberryDesc,
    },

    [4] = {
        .name = gText_CabbageName,
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 84,
        .desc = gText_CabbageDesc,
    },

    [5] = {
        .name = gText_TomatoName,
        .isDrink = FALSE,
        .stamina = 4,
        .fatigue = -1,
        .icon = 448,
        .desc = gText_TomatoDesc,
    },

    [6] = {
        .name = gText_CornName,
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 109,
        .desc = gText_CornDesc,
    },

    [7] = {
        .name = gText_OnionName,
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 319,
        .desc = gText_OnionDesc,
    },

    [8] = {
        .name = gText_PumpkinName,
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 354,
        .desc = gText_PumpkinDesc,
    },

    [9] = {
        .name = gText_PineappleName,
        .isDrink = FALSE,
        .stamina = 5,
        .fatigue = -2,
        .icon = 334,
        .desc = gText_PineappleDesc,
    },

    [10] = {
        .name = gText_EggplantName,
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 132,
        .desc = gText_EggplantDesc,
    },

    [11] = {
        .name = gText_CarrotName,
        .isDrink = FALSE,
        .stamina = 4,
        .fatigue = -1,
        .icon = 89,
        .desc = gText_CarrotDesc,
    },

    [12] = {
        .name = gText_SweetPotatoName,
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 439,
        .desc = gText_SweetPotatoDesc,
    },

    [13] = {
        .name = gText_SpinachName,
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 423,
        .desc = gText_SpinachDesc,
    },

    [14] = {
        .name = gText_GreenPepperName,
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 218,
        .desc = gText_GreenPepperDesc,
    },

    [15] = {
        .name = gText_RegularQualityEggName,
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 125,
        .desc = gText_RegularQualityEggDesc,
    },

    [16] = {
        .name = gText_GoodQualityEggName,
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 126,
        .desc = gText_GoodQualityEggDesc,
    },

    [17] = {
        .name = gText_HighQualityEggName,
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 127,
        .desc = gText_HighQualityEggDesc,
    },

    [18] = {
        .name = gText_GoldenEggName,
        .isDrink = FALSE,
        .stamina = 4,
        .fatigue = -2,
        .icon = 128,
        .desc = gText_GoldenEggDesc,
    },

    [19] = {
        .name = gText_PEggName,
        .isDrink = FALSE,
        .stamina = 5,
        .fatigue = -3,
        .icon = 129,
        .desc = gText_PEggDesc,
    },

    [20] = {
        .name = gText_XEggName,
        .isDrink = FALSE,
        .stamina = 6,
        .fatigue = -4,
        .icon = 130,
        .desc = gText_XEggDesc,
    },

    [21] = {
        .name = gText_SpaBoiledEggName,
        .isDrink = FALSE,
        .stamina = 4,
        .fatigue = -2,
        .icon = 131,
        .desc = gText_SpaBoiledEggDesc,
    },

    [22] = {
        .name = gText_MayonnaiseSName,
        .isDrink = FALSE,
        .stamina = 1,
        .fatigue = -1,
        .icon = 284,
        .desc = gText_MayonnaiseSDesc,
    },

    [23] = {
        .name = gText_MayonnaiseMName,
        .isDrink = FALSE,
        .stamina = 2,
        .fatigue = -1,
        .icon = 285,
        .desc = gText_MayonnaiseMDesc,
    },

    [24] = {
        .name = gText_MayonnaiseLName,
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 286,
        .desc = gText_MayonnaiseLDesc,
    },

    [25] = {
        .name = gText_MayonnaiseGName,
        .isDrink = FALSE,
        .stamina = 4,
        .fatigue = -2,
        .icon = 287,
        .desc = gText_MayonnaiseGDesc,
    },

    [26] = {
        .name = gText_MayonnaisePName,
        .isDrink = FALSE,
        .stamina = 5,
        .fatigue = -3,
        .icon = 288,
        .desc = gText_MayonnaisePDesc,
    },

    [27] = {
        .name = gText_MayonnaiseXName,
        .isDrink = FALSE,
        .stamina = 6,
        .fatigue = -3,
        .icon = 289,
        .desc = gText_MayonnaiseXDesc,
    },

    [28] = {
        .name = gText_MilkSName,
        .isDrink = TRUE,
        .stamina = 2,
        .fatigue = -2,
        .icon = 296,
        .desc = gText_MilkSDesc,
    },

    [29] = {
        .name = gText_MilkMName,
        .isDrink = TRUE,
        .stamina = 3,
        .fatigue = -2,
        .icon = 293,
        .desc = gText_MilkMDesc,
    },

    [30] = {
        .name = gText_MilkLName,
        .isDrink = TRUE,
        .stamina = 4,
        .fatigue = -2,
        .icon = 292,
        .desc = gText_MilkLDesc,
    },

    [31] = {
        .name = gText_MilkGName,
        .isDrink = TRUE,
        .stamina = 5,
        .fatigue = -3,
        .icon = 291,
        .desc = gText_MilkGDesc,
    },

    [32] = {
        .name = gText_MilkPName,
        .isDrink = TRUE,
        .stamina = 6,
        .fatigue = -4,
        .icon = 295,
        .desc = gText_MilkPDesc,
    },

    [33] = {
        .name = gText_MilkXName,
        .isDrink = TRUE,
        .stamina = 7,
        .fatigue = -5,
        .icon = 297,
        .desc = gText_MilkXDesc,
    },

    [34] = {
        .name = gText_CheeseSName,
        .isDrink = FALSE,
        .stamina = 5,
        .fatigue = -1,
        .icon = 92,
        .desc = gText_CheeseSDesc,
    },

    [35] = {
        .name = gText_CheeseMName,
        .isDrink = FALSE,
        .stamina = 6,
        .fatigue = -1,
        .icon = 93,
        .desc = gText_CheeseMDesc,
    },

    [36] = {
        .name = gText_CheeseLName,
        .isDrink = FALSE,
        .stamina = 7,
        .fatigue = -1,
        .icon = 94,
        .desc = gText_CheeseLDesc,
    },

    [37] = {
        .name = gText_CheeseGName,
        .isDrink = FALSE,
        .stamina = 8,
        .fatigue = -2,
        .icon = 95,
        .desc = gText_CheeseGDesc,
    },

    [38] = {
        .name = gText_CheesePName,
        .isDrink = FALSE,
        .stamina = 9,
        .fatigue = -3,
        .icon = 96,
        .desc = gText_CheesePDesc,
    },

    [39] = {
        .name = gText_CheeseXName,
        .isDrink = FALSE,
        .stamina = 10,
        .fatigue = -4,
        .icon = 97,
        .desc = gText_CheeseXDesc,
    },

    [40] = {
        .name = gText_AppleName,
        .isDrink = FALSE,
        .stamina = 2,
        .fatigue = -2,
        .icon = 8,
        .desc = gText_AppleDesc,
    },

    [41] = {
        .name = gText_HoneyName,
        .isDrink = FALSE,
        .stamina = 2,
        .fatigue = -2,
        .icon = 242,
        .desc = gText_HoneyDesc,
    },

    [42] = {
        .name = gText_BambooShootName,
        .isDrink = FALSE,
        .stamina = 10,
        .fatigue = -1,
        .icon = 50,
        .desc = gText_BambooShootDesc,
    },

    [43] = {
        .name = gText_WildGrapesName,
        .isDrink = FALSE,
        .stamina = 10,
        .fatigue = -2,
        .icon = 309,
        .desc = gText_WildGrapesDesc,
    },

    [44] = {
        .name = gText_MushroomName,
        .isDrink = FALSE,
        .stamina = 10,
        .fatigue = -1,
        .icon = 306,
        .desc = gText_MushroomDesc,
    },

    [45] = {
        .name = gText_PoisonousMushroomName,
        .isDrink = FALSE,
        .stamina = -50,
        .fatigue = 10,
        .icon = 245,
        .desc = gText_PoisonousMushroomDesc,
    },

    [46] = {
        .name = gText_TruffleName,
        .isDrink = FALSE,
        .stamina = 20,
        .fatigue = -1,
        .icon = 281,
        .desc = gText_TruffleDesc,
    },

    [47] = {
        .name = gText_BlueGrassName,
        .isDrink = FALSE,
        .stamina = 10,
        .fatigue = -1,
        .icon = 65,
        .desc = gText_BlueGrassDesc,
    },

    [48] = {
        .name = gText_GreenGrassName,
        .isDrink = FALSE,
        .stamina = 0,
        .fatigue = -2,
        .icon = 216,
        .desc = gText_GreenGrassDesc,
    },

    [49] = {
        .name = gText_RedGrassName,
        .isDrink = FALSE,
        .stamina = -10,
        .fatigue = 5,
        .icon = 376,
        .desc = gText_RedGrassDesc,
    },

    [50] = {
        .name = gText_YellowGrassName,
        .isDrink = FALSE,
        .stamina = -5,
        .fatigue = -5,
        .icon = 490,
        .desc = gText_YellowGrassDesc,
    },

    [51] = {
        .name = gText_OrangeGrassName,
        .isDrink = FALSE,
        .stamina = 0,
        .fatigue = 0,
        .icon = 322,
        .desc = gText_OrangeGrassDesc,
    },

    [52] = {
        .name = gText_PurpleGrassName,
        .isDrink = FALSE,
        .stamina = 5,
        .fatigue = -2,
        .icon = 357,
        .desc = gText_PurpleGrassDesc,
    },

    [53] = {
        .name = gText_IndigoGrassName,
        .isDrink = FALSE,
        .stamina = 20,
        .fatigue = -1,
        .icon = 256,
        .desc = gText_IndigoGrassDesc,
    },

    [54] = {
        .name = gText_BlackGrassName,
        .isDrink = FALSE,
        .stamina = 5,
        .fatigue = -5,
        .icon = 63,
        .desc = gText_BlackGrassDesc,
    },

    [55] = {
        .name = gText_WhiteGrassName,
        .isDrink = FALSE,
        .stamina = 10,
        .fatigue = -10,
        .icon = 473,
        .desc = gText_WhiteGrassDesc,
    },

    [56] = {
        .name = gText_QueenoftheNightName,
        .isDrink = FALSE,
        .stamina = 0,
        .fatigue = 0,
        .icon = 58,
        .desc = gText_QueenoftheNightDesc,
    },

    [57] = {
        .name = gText_BodigizerName,
        .isDrink = TRUE,
        .stamina = 50,
        .fatigue = -1,
        .icon = 349,
        .desc = gText_BodigizerDesc,
    },

    [58] = {
        .name = gText_BodigizerXLName,
        .isDrink = TRUE,
        .stamina = 100,
        .fatigue = -1,
        .icon = 350,
        .desc = gText_BodigizerXLDesc,
    },

    [59] = {
        .name = gText_TurbojoltName,
        .isDrink = TRUE,
        .stamina = 0,
        .fatigue = -20,
        .icon = 146,
        .desc = gText_TurbojoltDesc,
    },

    [60] = {
        .name = gText_TurbojoltXLName,
        .isDrink = TRUE,
        .stamina = 0,
        .fatigue = -50,
        .icon = 147,
        .desc = gText_TurbojoltXLDesc,
    },

    [61] = {
        .name = gText_WineName,
        .isDrink = TRUE,
        .stamina = 1,
        .fatigue = -5,
        .icon = 475,
        .desc = gText_WineDesc,
    },

    [62] = {
        .name = gText_GrapeJuiceName,
        .isDrink = TRUE,
        .stamina = 5,
        .fatigue = -5,
        .icon = 221,
        .desc = gText_GrapeJuiceDesc,
    },

    [63] = {
        .name = gText_RiceBallName,
        .isDrink = FALSE,
        .stamina = 2,
        .fatigue = -1,
        .icon = 380,
        .desc = gText_RiceBallDesc,
    },

    [64] = {
        .name = gText_BreadName,
        .isDrink = FALSE,
        .stamina = 2,
        .fatigue = -1,
        .icon = 78,
        .desc = gText_BreadDesc,
    },

    [65] = {
        .name = gText_OilName,
        .isDrink = FALSE,
        .stamina = 1,
        .fatigue = 1,
        .icon = 315,
        .desc = gText_OilDesc,
    },

    [66] = {
        .name = gText_FlowerName,
        .isDrink = FALSE,
        .stamina = 1,
        .fatigue = 1,
        .icon = 163,
        .desc = gText_FlowerDesc,
    },

    [67] = {
        .name = gText_CurryPowderName,
        .isDrink = FALSE,
        .stamina = 1,
        .fatigue = 1,
        .icon = 118,
        .desc = gText_CurryPowderDesc,
    },

    [68] = {
        .name = gText_MuffinMixName,
        .isDrink = FALSE,
        .stamina = 1,
        .fatigue = 1,
        .icon = 122,
        .desc = gText_MuffinMixDesc,
    },

    [69] = {
        .name = gText_ChocolateName,
        .isDrink = FALSE,
        .stamina = 2,
        .fatigue = -2,
        .icon = 102,
        .desc = gText_ChocolateDesc,
    },

    [70] = {
        .name = gText_RelaxTeaLeavesName,
        .isDrink = FALSE,
        .stamina = 2,
        .fatigue = -3,
        .icon = 379,
        .desc = gText_RelaxTeaLeavesDesc,
    },

    [71] = {
        .name = gText_SUGDWAppleName,
        .isDrink = FALSE,
        .stamina = 2,
        .fatigue = -2,
        .icon = 435,
        .desc = gText_SUGDWAppleDesc,
    },

    [72] = {
        .name = gText_HMSGBAppleName,
        .isDrink = FALSE,
        .stamina = 2,
        .fatigue = -2,
        .icon = 233,
        .desc = gText_HMSGBAppleDesc,
    },

    [73] = {
        .name = gText_AEPFEAppleName,
        .isDrink = FALSE,
        .stamina = 2,
        .fatigue = -2,
        .icon = 1,
        .desc = gText_AEPFEAppleDesc,
    },

    [74] = {
        .name = gText_BuckwheatFlourName,
        .isDrink = FALSE,
        .stamina = 1,
        .fatigue = 1,
        .icon = 81,
        .desc = gText_BuckwheatFlourDesc,
    },

    [75] = {
        .name = gText_WildGrapeJuiceName,
        .isDrink = TRUE,
        .stamina = 1,
        .fatigue = -40,
        .icon = 214,
        .desc = gText_WildGrapeJuiceDesc,
    },

    [76] = {
        .name = gText_SaladName,
        .isDrink = FALSE,
        .stamina = 20,
        .fatigue = -5,
        .icon = 396,
        .desc = gText_SaladDesc,
    },

    [77] = {
        .name = gText_CurryRiceName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -2,
        .icon = 115,
        .desc = gText_CurryRiceDesc,
    },

    [78] = {
        .name = gText_StewName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -2,
        .icon = 427,
        .desc = gText_StewDesc,
    },

    [79] = {
        .name = gText_MisoSoupName,
        .isDrink = FALSE,
        .stamina = 5,
        .fatigue = -3,
        .icon = 298,
        .desc = gText_MisoSoupDesc,
    },

    [80] = {
        .name = gText_StirFryName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -1,
        .icon = 206,
        .desc = gText_StirFryDesc,
    },

    [81] = {
        .name = gText_FriedRiceName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -1,
        .icon = 388,
        .desc = gText_FriedRiceDesc,
    },

    [82] = {
        .name = gText_SavoryPancakeName,
        .isDrink = FALSE,
        .stamina = 50,
        .fatigue = -1,
        .icon = 316,
        .desc = gText_SavoryPancakeDesc,
    },

    [83] = {
        .name = gText_SandwichName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -5,
        .icon = 398,
        .desc = gText_SandwichDesc,
    },

    [84] = {
        .name = gText_FruitJuiceName,
        .isDrink = TRUE,
        .stamina = 20,
        .fatigue = -15,
        .icon = 202,
        .desc = gText_FruitJuiceDesc,
    },

    [85] = {
        .name = gText_VegetableJuiceName,
        .isDrink = TRUE,
        .stamina = 20,
        .fatigue = -20,
        .icon = 459,
        .desc = gText_VegetableJuiceDesc,
    },

    [86] = {
        .name = gText_MixedJuiceName,
        .isDrink = TRUE,
        .stamina = 50,
        .fatigue = -30,
        .icon = 300,
        .desc = gText_MixedJuiceDesc,
    },

    [87] = {
        .name = gText_FruitLatteName,
        .isDrink = TRUE,
        .stamina = 30,
        .fatigue = -15,
        .icon = 203,
        .desc = gText_FruitLatteDesc,
    },

    [88] = {
        .name = gText_VegetableLatteName,
        .isDrink = TRUE,
        .stamina = 30,
        .fatigue = -20,
        .icon = 460,
        .desc = gText_VegetableLatteDesc,
    },

    [89] = {
        .name = gText_MixedLatteName,
        .isDrink = TRUE,
        .stamina = 60,
        .fatigue = -20,
        .icon = 301,
        .desc = gText_MixedLatteDesc,
    },

    [90] = {
        .name = gText_StrawberryMilkName,
        .isDrink = TRUE,
        .stamina = 30,
        .fatigue = -15,
        .icon = 432,
        .desc = gText_StrawberryMilkDesc,
    },

    [91] = {
        .name = gText_StrawberryJamName,
        .isDrink = FALSE,
        .stamina = 5,
        .fatigue = -5,
        .icon = 431,
        .desc = gText_StrawberryJamDesc,
    },

    [92] = {
        .name = gText_TomatoJuiceName,
        .isDrink = TRUE,
        .stamina = 20,
        .fatigue = -20,
        .icon = 449,
        .desc = gText_TomatoJuiceDesc,
    },

    [93] = {
        .name = gText_PickledTurnipName,
        .isDrink = FALSE,
        .stamina = 20,
        .fatigue = -4,
        .icon = 333,
        .desc = gText_PickledTurnipDesc,
    },

    [94] = {
        .name = gText_FrenchFriesName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -2,
        .icon = 205,
        .desc = gText_FrenchFriesDesc,
    },

    [95] = {
        .name = gText_PicklesName,
        .isDrink = FALSE,
        .stamina = 20,
        .fatigue = -7,
        .icon = 332,
        .desc = gText_PicklesDesc,
    },

    [96] = {
        .name = gText_KetchupName,
        .isDrink = FALSE,
        .stamina = 1,
        .fatigue = 0,
        .icon = 264,
        .desc = gText_KetchupDesc,
    },

    [97] = {
        .name = gText_PopcornName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -1,
        .icon = 343,
        .desc = gText_PopcornDesc,
    },

    [98] = {
        .name = gText_CornFlakesName,
        .isDrink = FALSE,
        .stamina = 10,
        .fatigue = -2,
        .icon = 110,
        .desc = gText_CornFlakesDesc,
    },

    [99] = {
        .name = gText_BakedCornName,
        .isDrink = FALSE,
        .stamina = 7,
        .fatigue = -1,
        .icon = 384,
        .desc = gText_BakedCornDesc,
    },

    [100] = {
        .name = gText_PineappleJuiceName,
        .isDrink = TRUE,
        .stamina = 5,
        .fatigue = -15,
        .icon = 359,
        .desc = gText_PineappleJuiceDesc,
    },

    [101] = {
        .name = gText_PumpkinPuddingName,
        .isDrink = FALSE,
        .stamina = 50,
        .fatigue = -10,
        .icon = 355,
        .desc = gText_PumpkinPuddingDesc,
    },

    [102] = {
        .name = gText_PumpkinStewName,
        .isDrink = FALSE,
        .stamina = 8,
        .fatigue = -1,
        .icon = 70,
        .desc = gText_PumpkinStewDesc,
    },

    [103] = {
        .name = gText_HappyEggplantName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -2,
        .icon = 133,
        .desc = gText_HappyEggplantDesc,
    },

    [104] = {
        .name = gText_SweetPotatoesName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -5,
        .icon = 441,
        .desc = gText_SweetPotatoesDesc,
    },

    [105] = {
        .name = gText_BakedSweetPotatoName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -5,
        .icon = 387,
        .desc = gText_BakedSweetPotatoDesc,
    },

    [106] = {
        .name = gText_GreensName,
        .isDrink = FALSE,
        .stamina = 20,
        .fatigue = -1,
        .icon = 314,
        .desc = gText_GreensDesc,
    },

    [107] = {
        .name = gText_ScrambledEggsName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -3,
        .icon = 385,
        .desc = gText_ScrambledEggsDesc,
    },

    [108] = {
        .name = gText_OmeletName,
        .isDrink = FALSE,
        .stamina = 50,
        .fatigue = -4,
        .icon = 317,
        .desc = gText_OmeletDesc,
    },

    [109] = {
        .name = gText_OmeletRiceName,
        .isDrink = FALSE,
        .stamina = 60,
        .fatigue = -4,
        .icon = 318,
        .desc = gText_OmeletRiceDesc,
    },

    [110] = {
        .name = gText_BoiledEggName,
        .isDrink = FALSE,
        .stamina = 20,
        .fatigue = -2,
        .icon = 68,
        .desc = gText_BoiledEggDesc,
    },

    [111] = {
        .name = gText_HotMilkName,
        .isDrink = TRUE,
        .stamina = 20,
        .fatigue = -10,
        .icon = 244,
        .desc = gText_HotMilkDesc,
    },

    [112] = {
        .name = gText_ButterName,
        .isDrink = FALSE,
        .stamina = 1,
        .fatigue = 0,
        .icon = 82,
        .desc = gText_ButterDesc,
    },

    [113] = {
        .name = gText_CheeseCakeName,
        .isDrink = FALSE,
        .stamina = 50,
        .fatigue = -5,
        .icon = 98,
        .desc = gText_CheeseCakeDesc,
    },

    [114] = {
        .name = gText_CheeseFondueName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -3,
        .icon = 99,
        .desc = gText_CheeseFondueDesc,
    },

    [115] = {
        .name = gText_ApplePieName,
        .isDrink = FALSE,
        .stamina = 50,
        .fatigue = -8,
        .icon = 11,
        .desc = gText_ApplePieDesc,
    },

    [116] = {
        .name = gText_AppleJamName,
        .isDrink = FALSE,
        .stamina = 5,
        .fatigue = -5,
        .icon = 10,
        .desc = gText_AppleJamDesc,
    },

    [117] = {
        .name = gText_AppleSouffleName,
        .isDrink = FALSE,
        .stamina = 8,
        .fatigue = -2,
        .icon = 383,
        .desc = gText_AppleSouffleDesc,
    },

    [118] = {
        .name = gText_MushroomRiceName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -1,
        .icon = 308,
        .desc = gText_MushroomRiceDesc,
    },

    [119] = {
        .name = gText_BambooRiceName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -1,
        .icon = 442,
        .desc = gText_BambooRiceDesc,
    },

    [120] = {
        .name = gText_TruffleRiceName,
        .isDrink = FALSE,
        .stamina = 60,
        .fatigue = -1,
        .icon = 283,
        .desc = gText_TruffleRiceDesc,
    },

    [121] = {
        .name = gText_SushiName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -1,
        .icon = 438,
        .desc = gText_SushiDesc,
    },

    [122] = {
        .name = gText_JamBunName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -5,
        .icon = 260,
        .desc = gText_JamBunDesc,
    },

    [123] = {
        .name = gText_DinnerRoleName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -2,
        .icon = 83,
        .desc = gText_DinnerRoleDesc,
    },

    [124] = {
        .name = gText_RaisinBreadName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -4,
        .icon = 212,
        .desc = gText_RaisinBreadDesc,
    },

    [125] = {
        .name = gText_GrapeJamName,
        .isDrink = FALSE,
        .stamina = 5,
        .fatigue = -5,
        .icon = 213,
        .desc = gText_GrapeJamDesc,
    },

    [126] = {
        .name = gText_CurryBreadName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -2,
        .icon = 116,
        .desc = gText_CurryBreadDesc,
    },

    [127] = {
        .name = gText_SashimiName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -3,
        .icon = 399,
        .desc = gText_SashimiDesc,
    },

    [128] = {
        .name = gText_GrilledFishName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -1,
        .icon = 220,
        .desc = gText_GrilledFishDesc,
    },

    [129] = {
        .name = gText_ChirashiSushiName,
        .isDrink = FALSE,
        .stamina = 50,
        .fatigue = -1,
        .icon = 101,
        .desc = gText_ChirashiSushiDesc,
    },

    [130] = {
        .name = gText_PizzaName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -1,
        .icon = 341,
        .desc = gText_PizzaDesc,
    },

    [131] = {
        .name = gText_NoodlesName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -3,
        .icon = 312,
        .desc = gText_NoodlesDesc,
    },

    [132] = {
        .name = gText_CurryNoodlesName,
        .isDrink = FALSE,
        .stamina = 60,
        .fatigue = -3,
        .icon = 117,
        .desc = gText_CurryNoodlesDesc,
    },

    [133] = {
        .name = gText_TempuraNoodlesName,
        .isDrink = FALSE,
        .stamina = 60,
        .fatigue = -3,
        .icon = 445,
        .desc = gText_TempuraNoodlesDesc,
    },

    [134] = {
        .name = gText_FriedNoodlesName,
        .isDrink = FALSE,
        .stamina = 60,
        .fatigue = -2,
        .icon = 386,
        .desc = gText_FriedNoodlesDesc,
    },

    [135] = {
        .name = gText_BuckwheatNoodlesName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -3,
        .icon = 492,
        .desc = gText_BuckwheatNoodlesDesc,
    },

    [136] = {
        .name = gText_NoodlesTempuraName,
        .isDrink = FALSE,
        .stamina = 60,
        .fatigue = -3,
        .icon = 446,
        .desc = gText_NoodlesTempuraDesc,
    },

    [137] = {
        .name = gText_FriedNoodlesName,
        .isDrink = FALSE,
        .stamina = 60,
        .fatigue = -2,
        .icon = 391,
        .desc = gText_FriedNoodlesDesc,
    },

    [138] = {
        .name = gText_BuckwheatChipsName,
        .isDrink = FALSE,
        .stamina = 15,
        .fatigue = -2,
        .icon = 421,
        .desc = gText_BuckwheatChipsDesc,
    },

    [139] = {
        .name = gText_CookiesName,
        .isDrink = FALSE,
        .stamina = 15,
        .fatigue = -5,
        .icon = 107,
        .desc = gText_CookiesDesc,
    },

    [140] = {
        .name = gText_ChocolateCookiesName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -5,
        .icon = 104,
        .desc = gText_ChocolateCookiesDesc,
    },

    [141] = {
        .name = gText_TempuraName,
        .isDrink = FALSE,
        .stamina = 20,
        .fatigue = -2,
        .icon = 443,
        .desc = gText_TempuraDesc,
    },

    [142] = {
        .name = gText_IceCreamName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -20,
        .icon = 248,
        .desc = gText_IceCreamDesc,
    },

    [143] = {
        .name = gText_CakeName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -8,
        .icon = 86,
        .desc = gText_CakeDesc,
    },

    [144] = {
        .name = gText_ChocolateCakeName,
        .isDrink = FALSE,
        .stamina = 70,
        .fatigue = -8,
        .icon = 103,
        .desc = gText_ChocolateCakeDesc,
    },

    [145] = {
        .name = gText_RelaxationTeaName,
        .isDrink = TRUE,
        .stamina = 50,
        .fatigue = -50,
        .icon = 378,
        .desc = gText_RelaxationTeaDesc,
    },

    [146] = {
        .name = gText_ToastName,
        .isDrink = FALSE,
        .stamina = 7,
        .fatigue = -1,
        .icon = 447,
        .desc = gText_ToastDesc,
    },

    [147] = {
        .name = gText_FrenchToastName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -2,
        .icon = 168,
        .desc = gText_FrenchToastDesc,
    },

    [148] = {
        .name = gText_PuddingName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -8,
        .icon = 353,
        .desc = gText_PuddingDesc,
    },

    [149] = {
        .name = gText_MountainStewName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -1,
        .icon = 100,
        .desc = gText_MountainStewDesc,
    },

    [150] = {
        .name = gText_MoonDumplingsName,
        .isDrink = FALSE,
        .stamina = 40,
        .fatigue = -3,
        .icon = 119,
        .desc = gText_MoonDumplingsDesc,
    },

    [151] = {
        .name = gText_RiceCakeName,
        .isDrink = FALSE,
        .stamina = 2,
        .fatigue = -1,
        .icon = 381,
        .desc = gText_RiceCakeDesc,
    },

    [152] = {
        .name = gText_RoastedRiceCakeName,
        .isDrink = FALSE,
        .stamina = 10,
        .fatigue = -2,
        .icon = 390,
        .desc = gText_RoastedRiceCakeDesc,
    },

    [153] = {
        .name = gText_ElliLeavesName,
        .isDrink = FALSE,
        .stamina = 100,
        .fatigue = -50,
        .icon = 138,
        .desc = gText_ElliLeavesDesc,
    },

    [154] = {
        .name = gText_FailedDishName,
        .isDrink = FALSE,
        .stamina = -10,
        .fatigue = 10,
        .icon = 140,
        .desc = gText_FailedRecipeDesc,
    },

    [155] = {
        .name = gText_FailedDrinkName,
        .isDrink = TRUE,
        .stamina = -10,
        .fatigue = 10,
        .icon = 143,
        .desc = gText_FailedRecipeDesc,
    },

    [156] = {
        .name = gText_FailedPotDishName,
        .isDrink = FALSE,
        .stamina = -10,
        .fatigue = 10,
        .icon = 145,
        .desc = gText_FailedRecipeDesc,
    },

    [157] = {
        .name = gText_FailedDessertName,
        .isDrink = FALSE,
        .stamina = -10,
        .fatigue = 10,
        .icon = 142,
        .desc = gText_FailedRecipeDesc,
    },

    [158] = {
        .name = gText_FailedBreadName,
        .isDrink = FALSE,
        .stamina = -10,
        .fatigue = 10,
        .icon = 141,
        .desc = gText_FailedRecipeDesc,
    },

    [159] = {
        .name = gText_FailedNoodlesName,
        .isDrink = FALSE,
        .stamina = -10,
        .fatigue = 10,
        .icon = 144,
        .desc = gText_FailedRecipeDesc,
    },

    [160] = {
        .name = gText_SmallFishName,
        .isDrink = FALSE,
        .stamina = 2,
        .fatigue = -1,
        .icon = 159,
        .desc = gText_SmallFishDesc,
    },

    [161] = {
        .name = gText_MediumFishName,
        .isDrink = FALSE,
        .stamina = 3,
        .fatigue = -1,
        .icon = 158,
        .desc = gText_MediumFishDesc,
    },

    [162] = {
        .name = gText_LargeFishName,
        .isDrink = FALSE,
        .stamina = 4,
        .fatigue = -1,
        .icon = 157,
        .desc = gText_LargeFishDesc,
    },

    [163] = {
        .name = gText_ToastedRiceBallName,
        .isDrink = FALSE,
        .stamina = 5,
        .fatigue = -1,
        .icon = 389,
        .desc = gText_ToastedRiceBallDesc,
    },

    [164] = {
        .name = gText_TempuraRiceName,
        .isDrink = FALSE,
        .stamina = 30,
        .fatigue = -2,
        .icon = 444,
        .desc = gText_TempuraRiceDesc,
    },

    [165] = {
        .name = gText_EggOverRiceName,
        .isDrink = FALSE,
        .stamina = 20,
        .fatigue = -1,
        .icon = 135,
        .desc = gText_EggOverRiceDesc,
    },

    [166] = {
        .name = gText_RiceGruelName,
        .isDrink = FALSE,
        .stamina = 5,
        .fatigue = -3,
        .icon = 382,
        .desc = gText_RiceGruelDesc,
    },

    [167] = {
        .name = gText_PancakesName,
        .isDrink = FALSE,
        .stamina = 20,
        .fatigue = -3,
        .icon = 243,
        .desc = gText_PancakesDesc,
    },

    [168] = {
        .name = gText_FishSticksName,
        .isDrink = FALSE,
        .stamina = 5,
        .fatigue = -1,
        .icon = 69,
        .desc = gText_FishSticksDesc,
    },

    [169] = {
        .name = gText_CandiedPotatoName,
        .isDrink = FALSE,
        .stamina = 8,
        .fatigue = -1,
        .icon = 88,
        .desc = gText_CandiedPotatoDesc,
    },

    [170] = {
        .name = gText_PotatoPancakesName,
        .isDrink = FALSE,
        .stamina = 20,
        .fatigue = -2,
        .icon = 112,
        .desc = gText_PotatoPancakesDesc,
    }
};
