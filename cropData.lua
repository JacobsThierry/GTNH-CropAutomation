-- From https://bombcar.github.io/crops_files/ic2cropcalculator.js
local CROPDATA = {
   ["Glint Weed"] = {
      ["name"] = "Glint Weed",
      ["tier"] = "4",
      ["id"] = "71",
      ["attributes"] = {[1] = "Orange", [2] = "Flower", [3] = "Magic"}
   },
   ["redwheat"] = {
      ["name"] = "redwheat",
      ["tier"] = "6",
      ["id"] = "15",
      ["attributes"] = {[1] = "Red", [2] = "Redstone", [3] = "Wheat"}
   },
   ["Raspberry"] = {
      ["name"] = "Raspberry",
      ["tier"] = "2",
      ["id"] = "93",
      ["attributes"] = {[1] = "Berry", [2] = "Food", [3] = "Red"}
   },
   ["Wolf's Bane"] = {
      ["name"] = "Wolf's Bane",
      ["tier"] = "4",
      ["id"] = "76",
      ["attributes"] = {[1] = "Flower", [2] = "Toxic", [3] = "Purple", [4] = "Ingredient"}
   },
   ["netherWart"] = {
      ["name"] = "netherWart",
      ["tier"] = "5",
      ["id"] = "16",
      ["attributes"] = {[1] = "Red", [2] = "Nether", [3] = "Ingredient", [4] = "Soulsand"}
   },
   ["Copper Oreberry"] = {
      ["name"] = "Copper Oreberry",
      ["tier"] = "5",
      ["id"] = "53",
      ["attributes"] = {[1] = "OreBerry", [2] = "Copper", [3] = "Metal", [4] = "Shiny"}
   },
   ["Magic Metal Berry"] = {
      ["name"] = "Magic Metal Berry",
      ["tier"] = "7",
      ["id"] = "68",
      ["attributes"] = {[1] = "OreBerry", [2] = "Magic", [3] = "Metal", [4] = "Thaumium", [5] = "Void"}
   },
   ["Green Glowshroom"] = {
      ["name"] = "Green Glowshroom",
      ["tier"] = "3",
      ["id"] = "46",
      ["attributes"] = {[1] = "Food", [2] = "Mushroom", [3] = "Ingredient", [4] = "Nether"}
   },
   ["Wild Carrots"] = {
      ["name"] = "Wild Carrots",
      ["tier"] = "2",
      ["id"] = "66",
      ["attributes"] = {[1] = "Food", [2] = "White", [3] = "Carrots"}
   },
   ["Cotton"] = {["name"] = "Cotton", ["tier"] = "3", ["id"] = "50", ["attributes"] = {[1] = "White", [2] = "Cotton"}},
   ["Eggplant"] = {
      ["name"] = "Eggplant",
      ["tier"] = "6",
      ["id"] = "131",
      ["attributes"] = {[1] = "Chicken", [2] = "Egg", [3] = "Food", [4] = "Feather", [5] = "Flower", [6] = "Addictive"}
   },
   ["Stargatium"] = {
      ["name"] = "Stargatium",
      ["tier"] = "12",
      ["id"] = "170",
      ["attributes"] = {[1] = "Metal", [2] = "Heavy", [3] = "Alien", [4] = "Naquadah"}
   },
   ["carrots"] = {
      ["name"] = "carrots",
      ["tier"] = "2",
      ["id"] = "20",
      ["attributes"] = {[1] = "Orange", [2] = "Food", [3] = "Carrots"}
   },
   ["Indigo"] = {
      ["name"] = "Indigo",
      ["tier"] = "2",
      ["id"] = "124",
      ["attributes"] = {[1] = "Flower", [2] = "Blue", [3] = "Ingredient"}
   },
   ["Spruce Bonsai"] = {
      ["name"] = "Spruce Bonsai",
      ["tier"] = "1",
      ["id"] = "95",
      ["attributes"] = {[1] = "Tree", [2] = "Bonsai", [3] = "Leavy"}
   },
   ["Oilberries"] = {
      ["name"] = "Oilberries",
      ["tier"] = "9",
      ["id"] = "126",
      ["attributes"] = {[1] = "Fire", [2] = "Dark", [3] = "Reed", [4] = "Rotten", [5] = "Coal", [6] = "Oil"}
   },
   ["Hemp"] = {
      ["name"] = "Hemp",
      ["tier"] = "2",
      ["id"] = "100",
      ["attributes"] = {[1] = "Green", [2] = "Soil", [3] = "Orange"}
   },
   ["Lemon"] = {
      ["name"] = "Lemon",
      ["tier"] = "4",
      ["id"] = "171",
      ["attributes"] = {[1] = "Food", [2] = "Yellow", [3] = "Sour"}
   },
   ["Corpseplant"] = {
      ["name"] = "Corpseplant",
      ["tier"] = "5",
      ["id"] = "133",
      ["attributes"] = {[1] = "Toxic", [2] = "Undead", [3] = "Tendrilly", [4] = "Food", [5] = "Rotten"}
   },
   ["Essence Berry"] = {
      ["name"] = "Essence Berry",
      ["tier"] = "5",
      ["id"] = "56",
      ["attributes"] = {[1] = "OreBerry", [2] = "Essence", [3] = "Undead"}
   },
   ["Ardite Berry"] = {
      ["name"] = "Ardite Berry",
      ["tier"] = "7",
      ["id"] = "57",
      ["attributes"] = {[1] = "OreBerry", [2] = "Ardite", [3] = "Metal", [4] = "Orange"}
   },
   ["Olivia"] = {
      ["name"] = "Olivia",
      ["tier"] = "2",
      ["id"] = "164",
      ["attributes"] = {[1] = "Crystal", [2] = "Shiny", [3] = "Processing", [4] = "Olivine"}
   },
   ["Glowshroom"] = {
      ["name"] = "Glowshroom",
      ["tier"] = "3",
      ["id"] = "49",
      ["attributes"] = {[1] = "Food", [2] = "Mushroom", [3] = "Ingredient", [4] = "Nether"}
   },
   ["Goldfish Plant"] = {
      ["name"] = "Goldfish Plant",
      ["tier"] = "4",
      ["id"] = "86",
      ["attributes"] = {[1] = "Nether", [2] = "Fish", [3] = "Food", [4] = "Bad", [5] = "Water"}
   },
   ["Milkwart"] = {
      ["name"] = "Milkwart",
      ["tier"] = "6",
      ["id"] = "137",
      ["attributes"] = {[1] = "Food", [2] = "Milk", [3] = "Cow"}
   },
   ["Maloberry"] = {
      ["name"] = "Maloberry",
      ["tier"] = "2",
      ["id"] = "90",
      ["attributes"] = {[1] = "Berry", [2] = "Food", [3] = "Yellow"}
   },
   ["blackthorn"] = {
      ["name"] = "blackthorn",
      ["tier"] = "2",
      ["id"] = "6",
      ["attributes"] = {[1] = "Black", [2] = "Flower", [3] = "Rose"}
   },
   ["Stingberry"] = {
      ["name"] = "Stingberry",
      ["tier"] = "4",
      ["id"] = "43",
      ["attributes"] = {[1] = "Berry", [2] = "Toxic", [3] = "Bad", [4] = "Green", [5] = "Nether", [6] = "Addictive"}
   },
   ["Bobsyeruncleranks"] = {
      ["name"] = "Bobsyeruncleranks",
      ["tier"] = "11",
      ["id"] = "127",
      ["attributes"] = {[1] = "Shiny", [2] = "Tendrilly", [3] = "Emerald", [4] = "Berylium", [5] = "Crystal"}
   },
   ["plumbiscus"] = {
      ["name"] = "plumbiscus",
      ["tier"] = "6",
      ["id"] = "27",
      ["attributes"] = {[1] = "Dense", [2] = "Leaves", [3] = "Metal"}
   },
   ["White Stonelilly"] = {
      ["name"] = "White Stonelilly",
      ["tier"] = "1",
      ["id"] = "36",
      ["attributes"] = {[1] = "White", [2] = "Stone", [3] = "Shiny"}
   },
   ["cyazint"] = {["name"] = "cyazint", ["tier"] = "2", ["id"] = "8", ["attributes"] = {[1] = "Blue", [2] = "Flower"}},
   ["Primordial Berry"] = {
      ["name"] = "Primordial Berry",
      ["tier"] = "16",
      ["id"] = "67",
      ["attributes"] = {[1] = "Berry", [2] = "Primordial", [3] = "Magic", [4] = "Unique"}
   },
   ["Glowflower"] = {
      ["name"] = "Glowflower",
      ["tier"] = "3",
      ["id"] = "64",
      ["attributes"] = {[1] = "Nether", [2] = "Light", [3] = "Shiny"}
   },
   ["Strawberry"] = {
      ["name"] = "Strawberry",
      ["tier"] = "2",
      ["id"] = "89",
      ["attributes"] = {[1] = "Berry", [2] = "Food", [3] = "Red"}
   },
   ["Purple Glowshroom"] = {
      ["name"] = "Purple Glowshroom",
      ["tier"] = "3",
      ["id"] = "47",
      ["attributes"] = {[1] = "Food", [2] = "Mushroom", [3] = "Ingredient", [4] = "Nether"}
   },
   ["Meatrose"] = {
      ["name"] = "Meatrose",
      ["tier"] = "7",
      ["id"] = "136",
      ["attributes"] = {[1] = "Food", [2] = "Flower", [3] = "Cow", [4] = "Fish", [5] = "Chicken", [6] = "Pig"}
   },
   ["stickreed"] = {
      ["name"] = "stickreed",
      ["tier"] = "4",
      ["id"] = "11",
      ["attributes"] = {[1] = "Reed", [2] = "Resin"}
   },
   ["redMushroom"] = {
      ["name"] = "redMushroom",
      ["tier"] = "2",
      ["id"] = "22",
      ["attributes"] = {[1] = "Red", [2] = "Food", [3] = "Mushroom"}
   },
   ["Tea"] = {
      ["name"] = "Tea",
      ["tier"] = "4",
      ["id"] = "177",
      ["attributes"] = {[1] = "Food", [2] = "Green", [3] = "Ingredient"}
   },
   ["Artichoke"] = {
      ["name"] = "Artichoke",
      ["tier"] = "4",
      ["id"] = "77",
      ["attributes"] = {[1] = "Flower", [2] = "Water", [3] = "Blue", [4] = "Ingredient"}
   },
   ["Plumbilia"] = {
      ["name"] = "Plumbilia",
      ["tier"] = "6",
      ["id"] = "146",
      ["attributes"] = {[1] = "Heavy", [2] = "Metal", [3] = "Lead", [4] = "Reed"}
   },
   ["Grape"] = {["name"] = "Grape", ["tier"] = "4", ["id"] = "174", ["attributes"] = {[1] = "Food", [2] = "Purple"}},
   ["Creeperweed"] = {
      ["name"] = "Creeperweed",
      ["tier"] = "7",
      ["id"] = "134",
      ["attributes"] = {
         [1] = "Creeper",
         [2] = "Tendrilly",
         [3] = "Explosive",
         [4] = "Fire",
         [5] = "Sulfur",
         [6] = "Saltpeter",
         [7] = "Coal"
      }
   },
   ["Rape"] = {
      ["name"] = "Rape",
      ["tier"] = "4",
      ["id"] = "178",
      ["attributes"] = {[1] = "Food", [2] = "Yellow", [3] = "Oil"}
   },
   ["Birch Bonsai"] = {
      ["name"] = "Birch Bonsai",
      ["tier"] = "1",
      ["id"] = "96",
      ["attributes"] = {[1] = "Tree", [2] = "Bonsai", [3] = "Leavy"}
   },
   ["Garnydinia"] = {
      ["name"] = "Garnydinia",
      ["tier"] = "7",
      ["id"] = "39",
      ["attributes"] = {[1] = "Shiny", [2] = "Crystal", [3] = "Red", [4] = "Yellow", [5] = "Metal"}
   },
   ["stagnium"] = {
      ["name"] = "stagnium",
      ["tier"] = "6",
      ["id"] = "26",
      ["attributes"] = {[1] = "Shiny", [2] = "Leaves", [3] = "Metal"}
   },
   ["Ivy"] = {
      ["name"] = "Ivy",
      ["tier"] = "2",
      ["id"] = "61",
      ["attributes"] = {[1] = "Green", [2] = "Tendrilly", [3] = "Flower", [4] = "Bad", [5] = "Poison"}
   },
   ["Fertilia"] = {
      ["name"] = "Fertilia",
      ["tier"] = "3",
      ["id"] = "153",
      ["attributes"] = {[1] = "Growth", [2] = "Healing", [3] = "Flower"}
   },
   ["reed"] = {["name"] = "reed", ["tier"] = "2", ["id"] = "10", ["attributes"] = {[1] = "Reed"}},
   ["rose"] = {
      ["name"] = "rose",
      ["tier"] = "2",
      ["id"] = "5",
      ["attributes"] = {[1] = "Red", [2] = "Flower", [3] = "Rose"}
   },
   ["Shimmerleaf"] = {
      ["name"] = "Shimmerleaf",
      ["tier"] = "5",
      ["id"] = "69",
      ["attributes"] = {[1] = "Magic", [2] = "Silver", [3] = "Toxic"}
   },
   ["Vines"] = {["name"] = "Vines", ["tier"] = "2", ["id"] = "81", ["attributes"] = {[1] = "Green", [2] = "Tendrilly"}},
   ["weed"] = {["name"] = "weed", ["tier"] = "0", ["id"] = "0", ["attributes"] = {[1] = "Weed", [2] = "Bad"}},
   ["Dark Oak Bonsai"] = {
      ["name"] = "Dark Oak Bonsai",
      ["tier"] = "1",
      ["id"] = "99",
      ["attributes"] = {[1] = "Tree", [2] = "Bonsai", [3] = "Leavy", [4] = "Dark"}
   },
   ["Blackberry"] = {
      ["name"] = "Blackberry",
      ["tier"] = "2",
      ["id"] = "91",
      ["attributes"] = {[1] = "Berry", [2] = "Food", [3] = "Black"}
   },
   ["Snowbell"] = {
      ["name"] = "Snowbell",
      ["tier"] = "4",
      ["id"] = "75",
      ["attributes"] = {[1] = "White", [2] = "Flower", [3] = "Ice", [4] = "Toxic", [5] = "Ingredient"}
   },
   ["Barley"] = {
      ["name"] = "Barley",
      ["tier"] = "2",
      ["id"] = "80",
      ["attributes"] = {[1] = "Green", [2] = "Food", [3] = "Wheat"}
   },
   ["Cucumber"] = {
      ["name"] = "Cucumber",
      ["tier"] = "4",
      ["id"] = "176",
      ["attributes"] = {[1] = "Food", [2] = "Green"}
   },
   ["Mandragora"] = {
      ["name"] = "Mandragora",
      ["tier"] = "4",
      ["id"] = "74",
      ["attributes"] = {[1] = "Flower", [2] = "Magic", [3] = "Bad", [4] = "Toxic", [5] = "Ingredient"}
   },
   ["Diareed"] = {
      ["name"] = "Diareed",
      ["tier"] = "12",
      ["id"] = "128",
      ["attributes"] = {[1] = "Fire", [2] = "Shiny", [3] = "Reed", [4] = "Coal", [5] = "Diamond", [6] = "Crystal"}
   },
   ["Red Mushrooms"] = {
      ["name"] = "Red Mushrooms",
      ["tier"] = "1",
      ["id"] = "144",
      ["attributes"] = {[1] = "Toxic", [2] = "Mushroom", [3] = "Ingredient"}
   },
   ["Withereed"] = {
      ["name"] = "Withereed",
      ["tier"] = "8",
      ["id"] = "129",
      ["attributes"] = {[1] = "Fire", [2] = "Undead", [3] = "Reed", [4] = "Coal", [5] = "Rotten", [6] = "Wither"}
   },
   ["Spanish Moss"] = {
      ["name"] = "Spanish Moss",
      ["tier"] = "7",
      ["id"] = "72",
      ["attributes"] = {[1] = "Green", [2] = "Climbable", [3] = "Magic"}
   },
   ["Brown Mushrooms"] = {
      ["name"] = "Brown Mushrooms",
      ["tier"] = "1",
      ["id"] = "143",
      ["attributes"] = {[1] = "Food", [2] = "Mushroom", [3] = "Ingredient"}
   },
   ["Sugar Beet"] = {
      ["name"] = "Sugar Beet",
      ["tier"] = "4",
      ["id"] = "87",
      ["attributes"] = {[1] = "Food", [2] = "White", [3] = "Ingredient"}
   },
   ["Acacia Bonsai"] = {
      ["name"] = "Acacia Bonsai",
      ["tier"] = "1",
      ["id"] = "98",
      ["attributes"] = {[1] = "Tree", [2] = "Bonsai", [3] = "Leavy"}
   },
   ["Cinderpearl"] = {
      ["name"] = "Cinderpearl",
      ["tier"] = "5",
      ["id"] = "70",
      ["attributes"] = {[1] = "Magic", [2] = "Blaze", [3] = "Nether"}
   },
   ["Yellow Stonelilly"] = {
      ["name"] = "Yellow Stonelilly",
      ["tier"] = "1",
      ["id"] = "37",
      ["attributes"] = {[1] = "Yellow", [2] = "Stone", [3] = "Alien"}
   },
   ["Berry"] = {
      ["name"] = "Berry",
      ["tier"] = "2",
      ["id"] = "59",
      ["attributes"] = {[1] = "Berry", [2] = "Food", [3] = "Red", [4] = "Ingredient"}
   },
   ["Jungle Bonsai"] = {
      ["name"] = "Jungle Bonsai",
      ["tier"] = "1",
      ["id"] = "97",
      ["attributes"] = {[1] = "Tree", [2] = "Bonsai", [3] = "Leavy"}
   },
   ["Eyebulb"] = {
      ["name"] = "Eyebulb",
      ["tier"] = "1",
      ["id"] = "62",
      ["attributes"] = {[1] = "Nether", [2] = "Evil", [3] = "Bad"}
   },
   ["Salty Root"] = {
      ["name"] = "Salty Root",
      ["tier"] = "4",
      ["id"] = "179",
      ["attributes"] = {[1] = "Salt", [2] = "Gray", [3] = "Root", [4] = "Hydrophobic"}
   },
   ["Reactoria"] = {
      ["name"] = "Reactoria",
      ["tier"] = "12",
      ["id"] = "156",
      ["attributes"] = {[1] = "Radioactive", [2] = "Metal", [3] = "Danger", [4] = "Uranium"}
   },
   ["Black Stonelilly"] = {
      ["name"] = "Black Stonelilly",
      ["tier"] = "1",
      ["id"] = "34",
      ["attributes"] = {[1] = "Black", [2] = "Stone", [3] = "Dark"}
   },
   ["Zomplant"] = {
      ["name"] = "Zomplant",
      ["tier"] = "3",
      ["id"] = "160",
      ["attributes"] = {[1] = "Zombie", [2] = "Rotten", [3] = "Undead"}
   },
   ["Tomato"] = {["name"] = "Tomato", ["tier"] = "4", ["id"] = "173", ["attributes"] = {[1] = "Food", [2] = "Red"}},
   ["Chilly"] = {
      ["name"] = "Chilly",
      ["tier"] = "4",
      ["id"] = "172",
      ["attributes"] = {[1] = "Food", [2] = "Red", [3] = "Spicy"}
   },
   ["Quantaria"] = {
      ["name"] = "Quantaria",
      ["tier"] = "12",
      ["id"] = "169",
      ["attributes"] = {[1] = "Metal", [2] = "Iridium", [3] = "Reed"}
   },
   ["Gray Stonelilly"] = {
      ["name"] = "Gray Stonelilly",
      ["tier"] = "1",
      ["id"] = "35",
      ["attributes"] = {[1] = "Gray", [2] = "Stone", [3] = "Metal"}
   },
   ["wheat"] = {
      ["name"] = "wheat",
      ["tier"] = "1",
      ["id"] = "1",
      ["attributes"] = {[1] = "Yellow", [2] = "Food", [3] = "Wheat"}
   },
   ["Nether Stonelilly"] = {
      ["name"] = "Nether Stonelilly",
      ["tier"] = "1",
      ["id"] = "38",
      ["attributes"] = {[1] = "Nether", [2] = "Stone", [3] = "Evil"}
   },
   ["Scheelinium"] = {
      ["name"] = "Scheelinium",
      ["tier"] = "12",
      ["id"] = "167",
      ["attributes"] = {[1] = "Metal", [2] = "Hard", [3] = "Bush", [4] = "Tungsten"}
   },
   ["Corium"] = {
      ["name"] = "Corium",
      ["tier"] = "6",
      ["id"] = "132",
      ["attributes"] = {[1] = "Cow", [2] = "Silk", [3] = "Tendrilly"}
   },
   ["Pyrolusium"] = {
      ["name"] = "Pyrolusium",
      ["tier"] = "12",
      ["id"] = "166",
      ["attributes"] = {[1] = "Metal", [2] = "Clean", [3] = "Bush", [4] = "Manganese"}
   },
   ["Sapphirum"] = {
      ["name"] = "Sapphirum",
      ["tier"] = "4",
      ["id"] = "165",
      ["attributes"] = {[1] = "Crystal", [2] = "Shiny", [3] = "Metal", [4] = "Sapphire"}
   },
   ["Waterlilly"] = {
      ["name"] = "Waterlilly",
      ["tier"] = "2",
      ["id"] = "84",
      ["attributes"] = {[1] = "Blue", [2] = "Water", [3] = "Green"}
   },
   ["Garlic"] = {
      ["name"] = "Garlic",
      ["tier"] = "3",
      ["id"] = "79",
      ["attributes"] = {[1] = "Food", [2] = "Ingredient", [3] = "Healing"}
   },
   ["Galvania"] = {
      ["name"] = "Galvania",
      ["tier"] = "6",
      ["id"] = "162",
      ["attributes"] = {[1] = "Metal", [2] = "Alloy", [3] = "Bush"}
   },
   ["Iron Oreberry"] = {
      ["name"] = "Iron Oreberry",
      ["tier"] = "5",
      ["id"] = "51",
      ["attributes"] = {[1] = "OreBerry", [2] = "Gray", [3] = "Metal"}
   },
   ["Titania"] = {
      ["name"] = "Titania",
      ["tier"] = "9",
      ["id"] = "155",
      ["attributes"] = {[1] = "Metal", [2] = "Heavy", [3] = "Reed", [4] = "Titanium"}
   },
   ["Onion"] = {["name"] = "Onion", ["tier"] = "4", ["id"] = "175", ["attributes"] = {[1] = "Food", [2] = "Brown"}},
   ["Slimeplant"] = {
      ["name"] = "Slimeplant",
      ["tier"] = "6",
      ["id"] = "138",
      ["attributes"] = {[1] = "Slime", [2] = "Bouncy", [3] = "Sticky", [4] = "Bush"}
   },
   ["pumpkin"] = {
      ["name"] = "pumpkin",
      ["tier"] = "1",
      ["id"] = "2",
      ["attributes"] = {[1] = "Orange", [2] = "Decoration", [3] = "Stem"}
   },
   ["Platina"] = {
      ["name"] = "Platina",
      ["tier"] = "11",
      ["id"] = "168",
      ["attributes"] = {[1] = "Metal", [2] = "Shiny", [3] = "Reed", [4] = "Platinum"}
   },
   ["Ember Moss"] = {
      ["name"] = "Ember Moss",
      ["tier"] = "7",
      ["id"] = "78",
      ["attributes"] = {[1] = "Fire", [2] = "Ingredient", [3] = "Bad", [4] = "Climbable"}
   },
   ["Transformium"] = {
      ["name"] = "Transformium",
      ["tier"] = "12",
      ["id"] = "158",
      ["attributes"] = {[1] = "Transform", [2] = "Coal", [3] = "Reed"}
   },
   ["potato"] = {
      ["name"] = "potato",
      ["tier"] = "2",
      ["id"] = "21",
      ["attributes"] = {[1] = "Yellow", [2] = "Food", [3] = "Potato"}
   },
   ["God of Thunder"] = {
      ["name"] = "God of Thunder",
      ["tier"] = "9",
      ["id"] = "157",
      ["attributes"] = {[1] = "Radioactive", [2] = "Metal", [3] = "Coal", [4] = "Thorium"}
   },
   ["Nickelback"] = {
      ["name"] = "Nickelback",
      ["tier"] = "5",
      ["id"] = "161",
      ["attributes"] = {[1] = "Metal", [2] = "Fire", [3] = "Alloy"}
   },
   ["Bauxia"] = {
      ["name"] = "Bauxia",
      ["tier"] = "6",
      ["id"] = "154",
      ["attributes"] = {[1] = "Metal", [2] = "Aluminium", [3] = "Reed", [4] = "Aluminium"}
   },
   ["Glowheat"] = {
      ["name"] = "Glowheat",
      ["tier"] = "10",
      ["id"] = "151",
      ["attributes"] = {[1] = "Light", [2] = "Shiny", [3] = "Crystal"}
   },
   ["Lazulia"] = {
      ["name"] = "Lazulia",
      ["tier"] = "7",
      ["id"] = "150",
      ["attributes"] = {[1] = "Shiny", [2] = "Bad", [3] = "Crystal", [4] = "Lapis"}
   },
   ["terraWart"] = {
      ["name"] = "terraWart",
      ["tier"] = "5",
      ["id"] = "17",
      ["attributes"] = {[1] = "Blue", [2] = "Aether", [3] = "Consumable", [4] = "Snow"}
   },
   ["Tin Oreberry"] = {
      ["name"] = "Tin Oreberry",
      ["tier"] = "4",
      ["id"] = "54",
      ["attributes"] = {[1] = "OreBerry", [2] = "Tin", [3] = "Metal", [4] = "Shiny"}
   },
   ["Glowing Earth Coral"] = {
      ["name"] = "Glowing Earth Coral",
      ["tier"] = "5",
      ["id"] = "63",
      ["attributes"] = {[1] = "Water", [2] = "Light", [3] = "Shiny"}
   },
   ["Trollplant"] = {
      ["name"] = "Trollplant",
      ["tier"] = "6",
      ["id"] = "149",
      ["attributes"] = {[1] = "Troll", [2] = "Bad", [3] = "Scrap"}
   },
   ["Liveroots"] = {
      ["name"] = "Liveroots",
      ["tier"] = "8",
      ["id"] = "148",
      ["attributes"] = {[1] = "Wood", [2] = "Tendrilly"}
   },
   ["Magical Nightshade"] = {
      ["name"] = "Magical Nightshade",
      ["tier"] = "13",
      ["id"] = "32",
      ["attributes"] = {[1] = "Berry", [2] = "Primordial", [3] = "Magic", [4] = "Unique"}
   },
   ["Moss"] = {["name"] = "Moss", ["tier"] = "4", ["id"] = "30", ["attributes"] = {[1] = "Green", [2] = "Climbable"}},
   ["Steeleafranks"] = {
      ["name"] = "Steeleafranks",
      ["tier"] = "10",
      ["id"] = "147",
      ["attributes"] = {[1] = "Metal", [2] = "Tendrilly", [3] = "Iron"}
   },
   ["dandelion"] = {
      ["name"] = "dandelion",
      ["tier"] = "2",
      ["id"] = "4",
      ["attributes"] = {[1] = "Yellow", [2] = "Flower"}
   },
   ["Saguaro Cactus"] = {
      ["name"] = "Saguaro Cactus",
      ["tier"] = "4",
      ["id"] = "48",
      ["attributes"] = {[1] = "Green", [2] = "Food", [3] = "Cactus"}
   },
   ["Turnip"] = {
      ["name"] = "Turnip",
      ["tier"] = "2",
      ["id"] = "65",
      ["attributes"] = {[1] = "Food", [2] = "Purple", [3] = "Carrots"}
   },
   ["ferru"] = {
      ["name"] = "ferru",
      ["tier"] = "6",
      ["id"] = "13",
      ["attributes"] = {[1] = "Gray", [2] = "Leaves", [3] = "Metal"}
   },
   ["cyprium"] = {
      ["name"] = "cyprium",
      ["tier"] = "6",
      ["id"] = "25",
      ["attributes"] = {[1] = "Orange", [2] = "Leaves", [3] = "Metal"}
   },
   ["brownMushroom"] = {
      ["name"] = "brownMushroom",
      ["tier"] = "2",
      ["id"] = "23",
      ["attributes"] = {[1] = "Brown", [2] = "Food", [3] = "Mushroom"}
   },
   ["eatingplant"] = {
      ["name"] = "eatingplant",
      ["tier"] = "6",
      ["id"] = "24",
      ["attributes"] = {[1] = "Bad", [2] = "Food"}
   },
   ["Argentia"] = {
      ["name"] = "Argentia",
      ["tier"] = "7",
      ["id"] = "145",
      ["attributes"] = {[1] = "Shiny", [2] = "Metal", [3] = "Silver", [4] = "Reed"}
   },
   ["melon"] = {
      ["name"] = "melon",
      ["tier"] = "2",
      ["id"] = "3",
      ["attributes"] = {[1] = "Green", [2] = "Food", [3] = "Stem"}
   },
   ["Cobalt Berry"] = {
      ["name"] = "Cobalt Berry",
      ["tier"] = "7",
      ["id"] = "58",
      ["attributes"] = {[1] = "OreBerry", [2] = "Cobalt", [3] = "Metal", [4] = "Blue"}
   },
   ["Tine"] = {
      ["name"] = "Tine",
      ["tier"] = "5",
      ["id"] = "141",
      ["attributes"] = {[1] = "Shiny", [2] = "Metal", [3] = "Pine", [4] = "Tin", [5] = "Bush"}
   },
   ["Tearstalks"] = {
      ["name"] = "Tearstalks",
      ["tier"] = "8",
      ["id"] = "140",
      ["attributes"] = {[1] = "Healing", [2] = "Nether", [3] = "Ingredient", [4] = "Reed", [5] = "Ghast"}
   },
   ["Blueberry"] = {
      ["name"] = "Blueberry",
      ["tier"] = "2",
      ["id"] = "92",
      ["attributes"] = {[1] = "Berry", [2] = "Food", [3] = "Blue"}
   },
   ["Starwart"] = {
      ["name"] = "Starwart",
      ["tier"] = "12",
      ["id"] = "159",
      ["attributes"] = {[1] = "Wither", [2] = "Nether", [3] = "Undead", [4] = "Netherstar"}
   },
   ["Papyrus"] = {["name"] = "Papyrus", ["tier"] = "5", ["id"] = "85", ["attributes"] = {[1] = "White", [2] = "Paper"}},
   ["Evil Ore"] = {
      ["name"] = "Evil Ore",
      ["tier"] = "8",
      ["id"] = "163",
      ["attributes"] = {[1] = "Crystal", [2] = "Fire", [3] = "Nether"}
   },
   ["Belladonna"] = {
      ["name"] = "Belladonna",
      ["tier"] = "4",
      ["id"] = "73",
      ["attributes"] = {[1] = "Purple", [2] = "Flower", [3] = "Toxic", [4] = "Ingredient"}
   },
   ["Enderbloom"] = {
      ["name"] = "Enderbloom",
      ["tier"] = "10",
      ["id"] = "135",
      ["attributes"] = {[1] = "Ender", [2] = "Flower", [3] = "Shiny"}
   },
   ["Thornvines"] = {
      ["name"] = "Thornvines",
      ["tier"] = "3",
      ["id"] = "44",
      ["attributes"] = {[1] = "Nether", [2] = "Climbable", [3] = "Bad"}
   },
   ["Skyberry"] = {
      ["name"] = "Skyberry",
      ["tier"] = "4",
      ["id"] = "42",
      ["attributes"] = {[1] = "Berry", [2] = "Toxic", [3] = "Bad", [4] = "Blue", [5] = "Nether", [6] = "Addictive"}
   },
   ["aurelia"] = {
      ["name"] = "aurelia",
      ["tier"] = "8",
      ["id"] = "14",
      ["attributes"] = {[1] = "Gold", [2] = "Leaves", [3] = "Metal"}
   },
   ["Duskberry"] = {
      ["name"] = "Duskberry",
      ["tier"] = "4",
      ["id"] = "41",
      ["attributes"] = {[1] = "Berry", [2] = "Toxic", [3] = "Bad", [4] = "Gray", [5] = "Nether", [6] = "Addictive"}
   },
   ["Blue Glowshroom"] = {
      ["name"] = "Blue Glowshroom",
      ["tier"] = "3",
      ["id"] = "45",
      ["attributes"] = {[1] = "Food", [2] = "Mushroom", [3] = "Ingredient", [4] = "Nether"}
   },
   ["Grass"] = {["name"] = "Grass", ["tier"] = "0", ["id"] = "82", ["attributes"] = {[1] = "Green", [2] = "Bad"}},
   ["Coppon"] = {
      ["name"] = "Coppon",
      ["tier"] = "6",
      ["id"] = "142",
      ["attributes"] = {[1] = "Shiny", [2] = "Metal", [3] = "Cotton", [4] = "Copper", [5] = "Bush"}
   },
   ["Space Plant"] = {
      ["name"] = "Space Plant",
      ["tier"] = "13",
      ["id"] = "31",
      ["attributes"] = {[1] = "Alien", [2] = "Space", [3] = "Radiation", [4] = "Transform"}
   },
   ["Cactus"] = {["name"] = "Cactus", ["tier"] = "3", ["id"] = "83", ["attributes"] = {[1] = "Green", [2] = "Cactus"}},
   ["hops"] = {
      ["name"] = "hops",
      ["tier"] = "5",
      ["id"] = "19",
      ["attributes"] = {[1] = "Green", [2] = "Ingredient", [3] = "Wheat"}
   },
   ["Oak Bonsai"] = {
      ["name"] = "Oak Bonsai",
      ["tier"] = "1",
      ["id"] = "94",
      ["attributes"] = {[1] = "Tree", [2] = "Bonsai", [3] = "Leavy", [4] = "Food"}
   },
   ["Spidernip"] = {
      ["name"] = "Spidernip",
      ["tier"] = "4",
      ["id"] = "139",
      ["attributes"] = {
         [1] = "Toxic",
         [2] = "Silk",
         [3] = "Spider",
         [4] = "Flower",
         [5] = "Ingredient",
         [6] = "Addictive"
      }
   },
   ["Flowering Vines"] = {
      ["name"] = "Flowering Vines",
      ["tier"] = "3",
      ["id"] = "60",
      ["attributes"] = {[1] = "Green", [2] = "Tendrilly", [3] = "Flower"}
   },
   ["coffee"] = {
      ["name"] = "coffee",
      ["tier"] = "7",
      ["id"] = "18",
      ["attributes"] = {[1] = "Leaves", [2] = "Ingredient", [3] = "Beans"}
   },
   ["Huckleberry"] = {
      ["name"] = "Huckleberry",
      ["tier"] = "2",
      ["id"] = "88",
      ["attributes"] = {[1] = "Berry", [2] = "Food", [3] = "Purple", [4] = "Leaves"}
   },
   ["shining"] = {
      ["name"] = "shining",
      ["tier"] = "8",
      ["id"] = "28",
      ["attributes"] = {[1] = "Silver", [2] = "Leaves", [3] = "Metal"}
   },
   ["Aluminium Oreberry"] = {
      ["name"] = "Aluminium Oreberry",
      ["tier"] = "5",
      ["id"] = "55",
      ["attributes"] = {[1] = "OreBerry", [2] = "Aluminium", [3] = "Metal", [4] = "Aluminum"}
   },
   ["Blazereed"] = {
      ["name"] = "Blazereed",
      ["tier"] = "6",
      ["id"] = "130",
      ["attributes"] = {[1] = "Fire", [2] = "Blaze", [3] = "Reed", [4] = "Sulfur"}
   },
   ["Knightly Oreberry"] = {
      ["name"] = "Knightly Oreberry",
      ["tier"] = "8",
      ["id"] = "29",
      ["attributes"] = {[1] = "OreBerry", [2] = "Knightly", [3] = "Metal"}
   },
   ["Flax"] = {
      ["name"] = "Flax",
      ["tier"] = "2",
      ["id"] = "125",
      ["attributes"] = {[1] = "Silk", [2] = "Tendrilly", [3] = "Addictive"}
   },
   ["cocoa"] = {
      ["name"] = "cocoa",
      ["tier"] = "3",
      ["id"] = "12",
      ["attributes"] = {[1] = "Brown", [2] = "Food", [3] = "Stem"}
   },
   ["Gold Oreberry"] = {
      ["name"] = "Gold Oreberry",
      ["tier"] = "5",
      ["id"] = "52",
      ["attributes"] = {[1] = "OreBerry", [2] = "Gold", [3] = "Metal"}
   },
   ["Red Stonelilly"] = {
      ["name"] = "Red Stonelilly",
      ["tier"] = "1",
      ["id"] = "33",
      ["attributes"] = {[1] = "Red", [2] = "Stone", [3] = "Fire"}
   },
   ["venomilia"] = {
      ["name"] = "venomilia",
      ["tier"] = "3",
      ["id"] = "9",
      ["attributes"] = {[1] = "Purple", [2] = "Flower", [3] = "Tulip", [4] = "Poison"}
   },
   ["Blightberry"] = {
      ["name"] = "Blightberry",
      ["tier"] = "4",
      ["id"] = "40",
      ["attributes"] = {[1] = "Berry", [2] = "Toxic", [3] = "Bad", [4] = "Green", [5] = "Nether", [6] = "Addictive"}
   },
   ["tulip"] = {
      ["name"] = "tulip",
      ["tier"] = "2",
      ["id"] = "7",
      ["attributes"] = {[1] = "Purple", [2] = "Flower", [3] = "Tulip"}
   }
}
