-- From https://bombcar.github.io/crops_files/ic2cropcalculator.js
local CROPDATA = {
   ["glint weed"] = {
      ["name"] = "glint weed",
      ["tier"] = "4",
      ["id"] = "71",
      ["attributes"] = {[1] = "orange", [2] = "flower", [3] = "magic"}
   },
   ["redwheat"] = {
      ["name"] = "redwheat",
      ["tier"] = "6",
      ["id"] = "15",
      ["attributes"] = {[1] = "red", [2] = "redstone", [3] = "wheat"}
   },
   ["raspberry"] = {
      ["name"] = "raspberry",
      ["tier"] = "2",
      ["id"] = "93",
      ["attributes"] = {[1] = "berry", [2] = "food", [3] = "red"}
   },
   ["wolf's bane"] = {
      ["name"] = "wolf's bane",
      ["tier"] = "4",
      ["id"] = "76",
      ["attributes"] = {[1] = "flower", [2] = "toxic", [3] = "purple", [4] = "ingredient"}
   },
   ["netherwart"] = {
      ["name"] = "netherwart",
      ["tier"] = "5",
      ["id"] = "16",
      ["attributes"] = {[1] = "red", [2] = "nether", [3] = "ingredient", [4] = "soulsand"}
   },
   ["copper oreberry"] = {
      ["name"] = "copper oreberry",
      ["tier"] = "5",
      ["id"] = "53",
      ["attributes"] = {[1] = "oreberry", [2] = "copper", [3] = "metal", [4] = "shiny"}
   },
   ["magic metal berry"] = {
      ["name"] = "magic metal berry",
      ["tier"] = "7",
      ["id"] = "68",
      ["attributes"] = {[1] = "oreberry", [2] = "magic", [3] = "metal", [4] = "thaumium", [5] = "void"}
   },
   ["green glowshroom"] = {
      ["name"] = "green glowshroom",
      ["tier"] = "3",
      ["id"] = "46",
      ["attributes"] = {[1] = "food", [2] = "mushroom", [3] = "ingredient", [4] = "nether"}
   },
   ["wild carrots"] = {
      ["name"] = "wild carrots",
      ["tier"] = "2",
      ["id"] = "66",
      ["attributes"] = {[1] = "food", [2] = "white", [3] = "carrots"}
   },
   ["cotton"] = {["name"] = "cotton", ["tier"] = "3", ["id"] = "50", ["attributes"] = {[1] = "white", [2] = "cotton"}},
   ["eggplant"] = {
      ["name"] = "eggplant",
      ["tier"] = "6",
      ["id"] = "131",
      ["attributes"] = {[1] = "chicken", [2] = "egg", [3] = "food", [4] = "feather", [5] = "flower", [6] = "addictive"}
   },
   ["stargatium"] = {
      ["name"] = "stargatium",
      ["tier"] = "12",
      ["id"] = "170",
      ["attributes"] = {[1] = "metal", [2] = "heavy", [3] = "alien", [4] = "naquadah"}
   },
   ["carrots"] = {
      ["name"] = "carrots",
      ["tier"] = "2",
      ["id"] = "20",
      ["attributes"] = {[1] = "orange", [2] = "food", [3] = "carrots"}
   },
   ["indigo"] = {
      ["name"] = "indigo",
      ["tier"] = "2",
      ["id"] = "124",
      ["attributes"] = {[1] = "flower", [2] = "blue", [3] = "ingredient"}
   },
   ["spruce bonsai"] = {
      ["name"] = "spruce bonsai",
      ["tier"] = "1",
      ["id"] = "95",
      ["attributes"] = {[1] = "tree", [2] = "bonsai", [3] = "leavy"}
   },
   ["oilberries"] = {
      ["name"] = "oilberries",
      ["tier"] = "9",
      ["id"] = "126",
      ["attributes"] = {[1] = "fire", [2] = "dark", [3] = "reed", [4] = "rotten", [5] = "coal", [6] = "oil"}
   },
   ["hemp"] = {
      ["name"] = "hemp",
      ["tier"] = "2",
      ["id"] = "100",
      ["attributes"] = {[1] = "green", [2] = "soil", [3] = "orange"}
   },
   ["lemon"] = {
      ["name"] = "lemon",
      ["tier"] = "4",
      ["id"] = "171",
      ["attributes"] = {[1] = "food", [2] = "yellow", [3] = "sour"}
   },
   ["corpseplant"] = {
      ["name"] = "corpseplant",
      ["tier"] = "5",
      ["id"] = "133",
      ["attributes"] = {[1] = "toxic", [2] = "undead", [3] = "tendrilly", [4] = "food", [5] = "rotten"}
   },
   ["essence berry"] = {
      ["name"] = "essence berry",
      ["tier"] = "5",
      ["id"] = "56",
      ["attributes"] = {[1] = "oreberry", [2] = "essence", [3] = "undead"}
   },
   ["ardite berry"] = {
      ["name"] = "ardite berry",
      ["tier"] = "7",
      ["id"] = "57",
      ["attributes"] = {[1] = "oreberry", [2] = "ardite", [3] = "metal", [4] = "orange"}
   },
   ["olivia"] = {
      ["name"] = "olivia",
      ["tier"] = "2",
      ["id"] = "164",
      ["attributes"] = {[1] = "crystal", [2] = "shiny", [3] = "processing", [4] = "olivine"}
   },
   ["glowshroom"] = {
      ["name"] = "glowshroom",
      ["tier"] = "3",
      ["id"] = "49",
      ["attributes"] = {[1] = "food", [2] = "mushroom", [3] = "ingredient", [4] = "nether"}
   },
   ["goldfish plant"] = {
      ["name"] = "goldfish plant",
      ["tier"] = "4",
      ["id"] = "86",
      ["attributes"] = {[1] = "nether", [2] = "fish", [3] = "food", [4] = "bad", [5] = "water"}
   },
   ["milkwart"] = {
      ["name"] = "milkwart",
      ["tier"] = "6",
      ["id"] = "137",
      ["attributes"] = {[1] = "food", [2] = "milk", [3] = "cow"}
   },
   ["maloberry"] = {
      ["name"] = "maloberry",
      ["tier"] = "2",
      ["id"] = "90",
      ["attributes"] = {[1] = "berry", [2] = "food", [3] = "yellow"}
   },
   ["blackthorn"] = {
      ["name"] = "blackthorn",
      ["tier"] = "2",
      ["id"] = "6",
      ["attributes"] = {[1] = "black", [2] = "flower", [3] = "rose"}
   },
   ["stingberry"] = {
      ["name"] = "stingberry",
      ["tier"] = "4",
      ["id"] = "43",
      ["attributes"] = {[1] = "berry", [2] = "toxic", [3] = "bad", [4] = "green", [5] = "nether", [6] = "addictive"}
   },
   ["bobsyeruncleranks"] = {
      ["name"] = "bobsyeruncleranks",
      ["tier"] = "11",
      ["id"] = "127",
      ["attributes"] = {[1] = "shiny", [2] = "tendrilly", [3] = "emerald", [4] = "berylium", [5] = "crystal"}
   },
   ["plumbiscus"] = {
      ["name"] = "plumbiscus",
      ["tier"] = "6",
      ["id"] = "27",
      ["attributes"] = {[1] = "dense", [2] = "leaves", [3] = "metal"}
   },
   ["white stonelilly"] = {
      ["name"] = "white stonelilly",
      ["tier"] = "1",
      ["id"] = "36",
      ["attributes"] = {[1] = "white", [2] = "stone", [3] = "shiny"}
   },
   ["cyazint"] = {["name"] = "cyazint", ["tier"] = "2", ["id"] = "8", ["attributes"] = {[1] = "blue", [2] = "flower"}},
   ["primordial berry"] = {
      ["name"] = "primordial berry",
      ["tier"] = "16",
      ["id"] = "67",
      ["attributes"] = {[1] = "berry", [2] = "primordial", [3] = "magic", [4] = "unique"}
   },
   ["glowflower"] = {
      ["name"] = "glowflower",
      ["tier"] = "3",
      ["id"] = "64",
      ["attributes"] = {[1] = "nether", [2] = "light", [3] = "shiny"}
   },
   ["strawberry"] = {
      ["name"] = "strawberry",
      ["tier"] = "2",
      ["id"] = "89",
      ["attributes"] = {[1] = "berry", [2] = "food", [3] = "red"}
   },
   ["purple glowshroom"] = {
      ["name"] = "purple glowshroom",
      ["tier"] = "3",
      ["id"] = "47",
      ["attributes"] = {[1] = "food", [2] = "mushroom", [3] = "ingredient", [4] = "nether"}
   },
   ["meatrose"] = {
      ["name"] = "meatrose",
      ["tier"] = "7",
      ["id"] = "136",
      ["attributes"] = {[1] = "food", [2] = "flower", [3] = "cow", [4] = "fish", [5] = "chicken", [6] = "pig"}
   },
   ["stickreed"] = {
      ["name"] = "stickreed",
      ["tier"] = "4",
      ["id"] = "11",
      ["attributes"] = {[1] = "reed", [2] = "resin"}
   },
   ["redmushroom"] = {
      ["name"] = "redmushroom",
      ["tier"] = "2",
      ["id"] = "22",
      ["attributes"] = {[1] = "red", [2] = "food", [3] = "mushroom"}
   },
   ["tea"] = {
      ["name"] = "tea",
      ["tier"] = "4",
      ["id"] = "177",
      ["attributes"] = {[1] = "food", [2] = "green", [3] = "ingredient"}
   },
   ["artichoke"] = {
      ["name"] = "artichoke",
      ["tier"] = "4",
      ["id"] = "77",
      ["attributes"] = {[1] = "flower", [2] = "water", [3] = "blue", [4] = "ingredient"}
   },
   ["plumbilia"] = {
      ["name"] = "plumbilia",
      ["tier"] = "6",
      ["id"] = "146",
      ["attributes"] = {[1] = "heavy", [2] = "metal", [3] = "lead", [4] = "reed"}
   },
   ["grape"] = {["name"] = "grape", ["tier"] = "4", ["id"] = "174", ["attributes"] = {[1] = "food", [2] = "purple"}},
   ["creeperweed"] = {
      ["name"] = "creeperweed",
      ["tier"] = "7",
      ["id"] = "134",
      ["attributes"] = {
         [1] = "creeper",
         [2] = "tendrilly",
         [3] = "explosive",
         [4] = "fire",
         [5] = "sulfur",
         [6] = "saltpeter",
         [7] = "coal"
      }
   },
   ["rape"] = {
      ["name"] = "rape",
      ["tier"] = "4",
      ["id"] = "178",
      ["attributes"] = {[1] = "food", [2] = "yellow", [3] = "oil"}
   },
   ["birch bonsai"] = {
      ["name"] = "birch bonsai",
      ["tier"] = "1",
      ["id"] = "96",
      ["attributes"] = {[1] = "tree", [2] = "bonsai", [3] = "leavy"}
   },
   ["garnydinia"] = {
      ["name"] = "garnydinia",
      ["tier"] = "7",
      ["id"] = "39",
      ["attributes"] = {[1] = "shiny", [2] = "crystal", [3] = "red", [4] = "yellow", [5] = "metal"}
   },
   ["stagnium"] = {
      ["name"] = "stagnium",
      ["tier"] = "6",
      ["id"] = "26",
      ["attributes"] = {[1] = "shiny", [2] = "leaves", [3] = "metal"}
   },
   ["ivy"] = {
      ["name"] = "ivy",
      ["tier"] = "2",
      ["id"] = "61",
      ["attributes"] = {[1] = "green", [2] = "tendrilly", [3] = "flower", [4] = "bad", [5] = "poison"}
   },
   ["fertilia"] = {
      ["name"] = "fertilia",
      ["tier"] = "3",
      ["id"] = "153",
      ["attributes"] = {[1] = "growth", [2] = "healing", [3] = "flower"}
   },
   ["reed"] = {["name"] = "reed", ["tier"] = "2", ["id"] = "10", ["attributes"] = {[1] = "reed"}},
   ["rose"] = {
      ["name"] = "rose",
      ["tier"] = "2",
      ["id"] = "5",
      ["attributes"] = {[1] = "red", [2] = "flower", [3] = "rose"}
   },
   ["shimmerleaf"] = {
      ["name"] = "shimmerleaf",
      ["tier"] = "5",
      ["id"] = "69",
      ["attributes"] = {[1] = "magic", [2] = "silver", [3] = "toxic"}
   },
   ["vines"] = {["name"] = "vines", ["tier"] = "2", ["id"] = "81", ["attributes"] = {[1] = "green", [2] = "tendrilly"}},
   ["weed"] = {["name"] = "weed", ["tier"] = "0", ["id"] = "0", ["attributes"] = {[1] = "weed", [2] = "bad"}},
   ["dark oak bonsai"] = {
      ["name"] = "dark oak bonsai",
      ["tier"] = "1",
      ["id"] = "99",
      ["attributes"] = {[1] = "tree", [2] = "bonsai", [3] = "leavy", [4] = "dark"}
   },
   ["blackberry"] = {
      ["name"] = "blackberry",
      ["tier"] = "2",
      ["id"] = "91",
      ["attributes"] = {[1] = "berry", [2] = "food", [3] = "black"}
   },
   ["snowbell"] = {
      ["name"] = "snowbell",
      ["tier"] = "4",
      ["id"] = "75",
      ["attributes"] = {[1] = "white", [2] = "flower", [3] = "ice", [4] = "toxic", [5] = "ingredient"}
   },
   ["barley"] = {
      ["name"] = "barley",
      ["tier"] = "2",
      ["id"] = "80",
      ["attributes"] = {[1] = "green", [2] = "food", [3] = "wheat"}
   },
   ["cucumber"] = {
      ["name"] = "cucumber",
      ["tier"] = "4",
      ["id"] = "176",
      ["attributes"] = {[1] = "food", [2] = "green"}
   },
   ["mandragora"] = {
      ["name"] = "mandragora",
      ["tier"] = "4",
      ["id"] = "74",
      ["attributes"] = {[1] = "flower", [2] = "magic", [3] = "bad", [4] = "toxic", [5] = "ingredient"}
   },
   ["diareed"] = {
      ["name"] = "diareed",
      ["tier"] = "12",
      ["id"] = "128",
      ["attributes"] = {[1] = "fire", [2] = "shiny", [3] = "reed", [4] = "coal", [5] = "diamond", [6] = "crystal"}
   },
   ["red mushrooms"] = {
      ["name"] = "red mushrooms",
      ["tier"] = "1",
      ["id"] = "144",
      ["attributes"] = {[1] = "toxic", [2] = "mushroom", [3] = "ingredient"}
   },
   ["withereed"] = {
      ["name"] = "withereed",
      ["tier"] = "8",
      ["id"] = "129",
      ["attributes"] = {[1] = "fire", [2] = "undead", [3] = "reed", [4] = "coal", [5] = "rotten", [6] = "wither"}
   },
   ["spanish moss"] = {
      ["name"] = "spanish moss",
      ["tier"] = "7",
      ["id"] = "72",
      ["attributes"] = {[1] = "green", [2] = "climbable", [3] = "magic"}
   },
   ["brown mushrooms"] = {
      ["name"] = "brown mushrooms",
      ["tier"] = "1",
      ["id"] = "143",
      ["attributes"] = {[1] = "food", [2] = "mushroom", [3] = "ingredient"}
   },
   ["sugar beet"] = {
      ["name"] = "sugar beet",
      ["tier"] = "4",
      ["id"] = "87",
      ["attributes"] = {[1] = "food", [2] = "white", [3] = "ingredient"}
   },
   ["acacia bonsai"] = {
      ["name"] = "acacia bonsai",
      ["tier"] = "1",
      ["id"] = "98",
      ["attributes"] = {[1] = "tree", [2] = "bonsai", [3] = "leavy"}
   },
   ["cinderpearl"] = {
      ["name"] = "cinderpearl",
      ["tier"] = "5",
      ["id"] = "70",
      ["attributes"] = {[1] = "magic", [2] = "blaze", [3] = "nether"}
   },
   ["yellow stonelilly"] = {
      ["name"] = "yellow stonelilly",
      ["tier"] = "1",
      ["id"] = "37",
      ["attributes"] = {[1] = "yellow", [2] = "stone", [3] = "alien"}
   },
   ["berry"] = {
      ["name"] = "berry",
      ["tier"] = "2",
      ["id"] = "59",
      ["attributes"] = {[1] = "berry", [2] = "food", [3] = "red", [4] = "ingredient"}
   },
   ["jungle bonsai"] = {
      ["name"] = "jungle bonsai",
      ["tier"] = "1",
      ["id"] = "97",
      ["attributes"] = {[1] = "tree", [2] = "bonsai", [3] = "leavy"}
   },
   ["eyebulb"] = {
      ["name"] = "eyebulb",
      ["tier"] = "1",
      ["id"] = "62",
      ["attributes"] = {[1] = "nether", [2] = "evil", [3] = "bad"}
   },
   ["salty root"] = {
      ["name"] = "salty root",
      ["tier"] = "4",
      ["id"] = "179",
      ["attributes"] = {[1] = "salt", [2] = "gray", [3] = "root", [4] = "hydrophobic"}
   },
   ["reactoria"] = {
      ["name"] = "reactoria",
      ["tier"] = "12",
      ["id"] = "156",
      ["attributes"] = {[1] = "radioactive", [2] = "metal", [3] = "danger", [4] = "uranium"}
   },
   ["black stonelilly"] = {
      ["name"] = "black stonelilly",
      ["tier"] = "1",
      ["id"] = "34",
      ["attributes"] = {[1] = "black", [2] = "stone", [3] = "dark"}
   },
   ["zomplant"] = {
      ["name"] = "zomplant",
      ["tier"] = "3",
      ["id"] = "160",
      ["attributes"] = {[1] = "zombie", [2] = "rotten", [3] = "undead"}
   },
   ["tomato"] = {["name"] = "tomato", ["tier"] = "4", ["id"] = "173", ["attributes"] = {[1] = "food", [2] = "red"}},
   ["chilly"] = {
      ["name"] = "chilly",
      ["tier"] = "4",
      ["id"] = "172",
      ["attributes"] = {[1] = "food", [2] = "red", [3] = "spicy"}
   },
   ["quantaria"] = {
      ["name"] = "quantaria",
      ["tier"] = "12",
      ["id"] = "169",
      ["attributes"] = {[1] = "metal", [2] = "iridium", [3] = "reed"}
   },
   ["gray stonelilly"] = {
      ["name"] = "gray stonelilly",
      ["tier"] = "1",
      ["id"] = "35",
      ["attributes"] = {[1] = "gray", [2] = "stone", [3] = "metal"}
   },
   ["wheat"] = {
      ["name"] = "wheat",
      ["tier"] = "1",
      ["id"] = "1",
      ["attributes"] = {[1] = "yellow", [2] = "food", [3] = "wheat"}
   },
   ["nether stonelilly"] = {
      ["name"] = "nether stonelilly",
      ["tier"] = "1",
      ["id"] = "38",
      ["attributes"] = {[1] = "nether", [2] = "stone", [3] = "evil"}
   },
   ["scheelinium"] = {
      ["name"] = "scheelinium",
      ["tier"] = "12",
      ["id"] = "167",
      ["attributes"] = {[1] = "metal", [2] = "hard", [3] = "bush", [4] = "tungsten"}
   },
   ["corium"] = {
      ["name"] = "corium",
      ["tier"] = "6",
      ["id"] = "132",
      ["attributes"] = {[1] = "cow", [2] = "silk", [3] = "tendrilly"}
   },
   ["pyrolusium"] = {
      ["name"] = "pyrolusium",
      ["tier"] = "12",
      ["id"] = "166",
      ["attributes"] = {[1] = "metal", [2] = "clean", [3] = "bush", [4] = "manganese"}
   },
   ["sapphirum"] = {
      ["name"] = "sapphirum",
      ["tier"] = "4",
      ["id"] = "165",
      ["attributes"] = {[1] = "crystal", [2] = "shiny", [3] = "metal", [4] = "sapphire"}
   },
   ["waterlilly"] = {
      ["name"] = "waterlilly",
      ["tier"] = "2",
      ["id"] = "84",
      ["attributes"] = {[1] = "blue", [2] = "water", [3] = "green"}
   },
   ["garlic"] = {
      ["name"] = "garlic",
      ["tier"] = "3",
      ["id"] = "79",
      ["attributes"] = {[1] = "food", [2] = "ingredient", [3] = "healing"}
   },
   ["galvania"] = {
      ["name"] = "galvania",
      ["tier"] = "6",
      ["id"] = "162",
      ["attributes"] = {[1] = "metal", [2] = "alloy", [3] = "bush"}
   },
   ["iron oreberry"] = {
      ["name"] = "iron oreberry",
      ["tier"] = "5",
      ["id"] = "51",
      ["attributes"] = {[1] = "oreberry", [2] = "gray", [3] = "metal"}
   },
   ["titania"] = {
      ["name"] = "titania",
      ["tier"] = "9",
      ["id"] = "155",
      ["attributes"] = {[1] = "metal", [2] = "heavy", [3] = "reed", [4] = "titanium"}
   },
   ["onion"] = {["name"] = "onion", ["tier"] = "4", ["id"] = "175", ["attributes"] = {[1] = "food", [2] = "brown"}},
   ["slimeplant"] = {
      ["name"] = "slimeplant",
      ["tier"] = "6",
      ["id"] = "138",
      ["attributes"] = {[1] = "slime", [2] = "bouncy", [3] = "sticky", [4] = "bush"}
   },
   ["pumpkin"] = {
      ["name"] = "pumpkin",
      ["tier"] = "1",
      ["id"] = "2",
      ["attributes"] = {[1] = "orange", [2] = "decoration", [3] = "stem"}
   },
   ["platina"] = {
      ["name"] = "platina",
      ["tier"] = "11",
      ["id"] = "168",
      ["attributes"] = {[1] = "metal", [2] = "shiny", [3] = "reed", [4] = "platinum"}
   },
   ["ember moss"] = {
      ["name"] = "ember moss",
      ["tier"] = "7",
      ["id"] = "78",
      ["attributes"] = {[1] = "fire", [2] = "ingredient", [3] = "bad", [4] = "climbable"}
   },
   ["transformium"] = {
      ["name"] = "transformium",
      ["tier"] = "12",
      ["id"] = "158",
      ["attributes"] = {[1] = "transform", [2] = "coal", [3] = "reed"}
   },
   ["potato"] = {
      ["name"] = "potato",
      ["tier"] = "2",
      ["id"] = "21",
      ["attributes"] = {[1] = "yellow", [2] = "food", [3] = "potato"}
   },
   ["god of thunder"] = {
      ["name"] = "god of thunder",
      ["tier"] = "9",
      ["id"] = "157",
      ["attributes"] = {[1] = "radioactive", [2] = "metal", [3] = "coal", [4] = "thorium"}
   },
   ["nickelback"] = {
      ["name"] = "nickelback",
      ["tier"] = "5",
      ["id"] = "161",
      ["attributes"] = {[1] = "metal", [2] = "fire", [3] = "alloy"}
   },
   ["bauxia"] = {
      ["name"] = "bauxia",
      ["tier"] = "6",
      ["id"] = "154",
      ["attributes"] = {[1] = "metal", [2] = "aluminium", [3] = "reed", [4] = "aluminium"}
   },
   ["glowheat"] = {
      ["name"] = "glowheat",
      ["tier"] = "10",
      ["id"] = "151",
      ["attributes"] = {[1] = "light", [2] = "shiny", [3] = "crystal"}
   },
   ["lazulia"] = {
      ["name"] = "lazulia",
      ["tier"] = "7",
      ["id"] = "150",
      ["attributes"] = {[1] = "shiny", [2] = "bad", [3] = "crystal", [4] = "lapis"}
   },
   ["terrawart"] = {
      ["name"] = "terrawart",
      ["tier"] = "5",
      ["id"] = "17",
      ["attributes"] = {[1] = "blue", [2] = "aether", [3] = "consumable", [4] = "snow"}
   },
   ["tin oreberry"] = {
      ["name"] = "tin oreberry",
      ["tier"] = "4",
      ["id"] = "54",
      ["attributes"] = {[1] = "oreberry", [2] = "tin", [3] = "metal", [4] = "shiny"}
   },
   ["glowing earth coral"] = {
      ["name"] = "glowing earth coral",
      ["tier"] = "5",
      ["id"] = "63",
      ["attributes"] = {[1] = "water", [2] = "light", [3] = "shiny"}
   },
   ["trollplant"] = {
      ["name"] = "trollplant",
      ["tier"] = "6",
      ["id"] = "149",
      ["attributes"] = {[1] = "troll", [2] = "bad", [3] = "scrap"}
   },
   ["liveroots"] = {
      ["name"] = "liveroots",
      ["tier"] = "8",
      ["id"] = "148",
      ["attributes"] = {[1] = "wood", [2] = "tendrilly"}
   },
   ["magical nightshade"] = {
      ["name"] = "magical nightshade",
      ["tier"] = "13",
      ["id"] = "32",
      ["attributes"] = {[1] = "berry", [2] = "primordial", [3] = "magic", [4] = "unique"}
   },
   ["moss"] = {["name"] = "moss", ["tier"] = "4", ["id"] = "30", ["attributes"] = {[1] = "green", [2] = "climbable"}},
   ["steeleafranks"] = {
      ["name"] = "steeleafranks",
      ["tier"] = "10",
      ["id"] = "147",
      ["attributes"] = {[1] = "metal", [2] = "tendrilly", [3] = "iron"}
   },
   ["dandelion"] = {
      ["name"] = "dandelion",
      ["tier"] = "2",
      ["id"] = "4",
      ["attributes"] = {[1] = "yellow", [2] = "flower"}
   },
   ["saguaro cactus"] = {
      ["name"] = "saguaro cactus",
      ["tier"] = "4",
      ["id"] = "48",
      ["attributes"] = {[1] = "green", [2] = "food", [3] = "cactus"}
   },
   ["turnip"] = {
      ["name"] = "turnip",
      ["tier"] = "2",
      ["id"] = "65",
      ["attributes"] = {[1] = "food", [2] = "purple", [3] = "carrots"}
   },
   ["ferru"] = {
      ["name"] = "ferru",
      ["tier"] = "6",
      ["id"] = "13",
      ["attributes"] = {[1] = "gray", [2] = "leaves", [3] = "metal"}
   },
   ["cyprium"] = {
      ["name"] = "cyprium",
      ["tier"] = "6",
      ["id"] = "25",
      ["attributes"] = {[1] = "orange", [2] = "leaves", [3] = "metal"}
   },
   ["brownmushroom"] = {
      ["name"] = "brownmushroom",
      ["tier"] = "2",
      ["id"] = "23",
      ["attributes"] = {[1] = "brown", [2] = "food", [3] = "mushroom"}
   },
   ["eatingplant"] = {
      ["name"] = "eatingplant",
      ["tier"] = "6",
      ["id"] = "24",
      ["attributes"] = {[1] = "bad", [2] = "food"}
   },
   ["argentia"] = {
      ["name"] = "argentia",
      ["tier"] = "7",
      ["id"] = "145",
      ["attributes"] = {[1] = "shiny", [2] = "metal", [3] = "silver", [4] = "reed"}
   },
   ["melon"] = {
      ["name"] = "melon",
      ["tier"] = "2",
      ["id"] = "3",
      ["attributes"] = {[1] = "green", [2] = "food", [3] = "stem"}
   },
   ["cobalt berry"] = {
      ["name"] = "cobalt berry",
      ["tier"] = "7",
      ["id"] = "58",
      ["attributes"] = {[1] = "oreberry", [2] = "cobalt", [3] = "metal", [4] = "blue"}
   },
   ["tine"] = {
      ["name"] = "tine",
      ["tier"] = "5",
      ["id"] = "141",
      ["attributes"] = {[1] = "shiny", [2] = "metal", [3] = "pine", [4] = "tin", [5] = "bush"}
   },
   ["tearstalks"] = {
      ["name"] = "tearstalks",
      ["tier"] = "8",
      ["id"] = "140",
      ["attributes"] = {[1] = "healing", [2] = "nether", [3] = "ingredient", [4] = "reed", [5] = "ghast"}
   },
   ["blueberry"] = {
      ["name"] = "blueberry",
      ["tier"] = "2",
      ["id"] = "92",
      ["attributes"] = {[1] = "berry", [2] = "food", [3] = "blue"}
   },
   ["starwart"] = {
      ["name"] = "starwart",
      ["tier"] = "12",
      ["id"] = "159",
      ["attributes"] = {[1] = "wither", [2] = "nether", [3] = "undead", [4] = "netherstar"}
   },
   ["papyrus"] = {["name"] = "papyrus", ["tier"] = "5", ["id"] = "85", ["attributes"] = {[1] = "white", [2] = "paper"}},
   ["evil ore"] = {
      ["name"] = "evil ore",
      ["tier"] = "8",
      ["id"] = "163",
      ["attributes"] = {[1] = "crystal", [2] = "fire", [3] = "nether"}
   },
   ["belladonna"] = {
      ["name"] = "belladonna",
      ["tier"] = "4",
      ["id"] = "73",
      ["attributes"] = {[1] = "purple", [2] = "flower", [3] = "toxic", [4] = "ingredient"}
   },
   ["enderbloom"] = {
      ["name"] = "enderbloom",
      ["tier"] = "10",
      ["id"] = "135",
      ["attributes"] = {[1] = "ender", [2] = "flower", [3] = "shiny"}
   },
   ["thornvines"] = {
      ["name"] = "thornvines",
      ["tier"] = "3",
      ["id"] = "44",
      ["attributes"] = {[1] = "nether", [2] = "climbable", [3] = "bad"}
   },
   ["skyberry"] = {
      ["name"] = "skyberry",
      ["tier"] = "4",
      ["id"] = "42",
      ["attributes"] = {[1] = "berry", [2] = "toxic", [3] = "bad", [4] = "blue", [5] = "nether", [6] = "addictive"}
   },
   ["aurelia"] = {
      ["name"] = "aurelia",
      ["tier"] = "8",
      ["id"] = "14",
      ["attributes"] = {[1] = "gold", [2] = "leaves", [3] = "metal"}
   },
   ["duskberry"] = {
      ["name"] = "duskberry",
      ["tier"] = "4",
      ["id"] = "41",
      ["attributes"] = {[1] = "berry", [2] = "toxic", [3] = "bad", [4] = "gray", [5] = "nether", [6] = "addictive"}
   },
   ["blue glowshroom"] = {
      ["name"] = "blue glowshroom",
      ["tier"] = "3",
      ["id"] = "45",
      ["attributes"] = {[1] = "food", [2] = "mushroom", [3] = "ingredient", [4] = "nether"}
   },
   ["grass"] = {["name"] = "grass", ["tier"] = "0", ["id"] = "82", ["attributes"] = {[1] = "green", [2] = "bad"}},
   ["coppon"] = {
      ["name"] = "coppon",
      ["tier"] = "6",
      ["id"] = "142",
      ["attributes"] = {[1] = "shiny", [2] = "metal", [3] = "cotton", [4] = "copper", [5] = "bush"}
   },
   ["space plant"] = {
      ["name"] = "space plant",
      ["tier"] = "13",
      ["id"] = "31",
      ["attributes"] = {[1] = "alien", [2] = "space", [3] = "radiation", [4] = "transform"}
   },
   ["cactus"] = {["name"] = "cactus", ["tier"] = "3", ["id"] = "83", ["attributes"] = {[1] = "green", [2] = "cactus"}},
   ["hops"] = {
      ["name"] = "hops",
      ["tier"] = "5",
      ["id"] = "19",
      ["attributes"] = {[1] = "green", [2] = "ingredient", [3] = "wheat"}
   },
   ["oak bonsai"] = {
      ["name"] = "oak bonsai",
      ["tier"] = "1",
      ["id"] = "94",
      ["attributes"] = {[1] = "tree", [2] = "bonsai", [3] = "leavy", [4] = "food"}
   },
   ["spidernip"] = {
      ["name"] = "spidernip",
      ["tier"] = "4",
      ["id"] = "139",
      ["attributes"] = {
         [1] = "toxic",
         [2] = "silk",
         [3] = "spider",
         [4] = "flower",
         [5] = "ingredient",
         [6] = "addictive"
      }
   },
   ["flowering vines"] = {
      ["name"] = "flowering vines",
      ["tier"] = "3",
      ["id"] = "60",
      ["attributes"] = {[1] = "green", [2] = "tendrilly", [3] = "flower"}
   },
   ["coffee"] = {
      ["name"] = "coffee",
      ["tier"] = "7",
      ["id"] = "18",
      ["attributes"] = {[1] = "leaves", [2] = "ingredient", [3] = "beans"}
   },
   ["huckleberry"] = {
      ["name"] = "huckleberry",
      ["tier"] = "2",
      ["id"] = "88",
      ["attributes"] = {[1] = "berry", [2] = "food", [3] = "purple", [4] = "leaves"}
   },
   ["shining"] = {
      ["name"] = "shining",
      ["tier"] = "8",
      ["id"] = "28",
      ["attributes"] = {[1] = "silver", [2] = "leaves", [3] = "metal"}
   },
   ["aluminium oreberry"] = {
      ["name"] = "aluminium oreberry",
      ["tier"] = "5",
      ["id"] = "55",
      ["attributes"] = {[1] = "oreberry", [2] = "aluminium", [3] = "metal", [4] = "aluminum"}
   },
   ["blazereed"] = {
      ["name"] = "blazereed",
      ["tier"] = "6",
      ["id"] = "130",
      ["attributes"] = {[1] = "fire", [2] = "blaze", [3] = "reed", [4] = "sulfur"}
   },
   ["knightly oreberry"] = {
      ["name"] = "knightly oreberry",
      ["tier"] = "8",
      ["id"] = "29",
      ["attributes"] = {[1] = "oreberry", [2] = "knightly", [3] = "metal"}
   },
   ["flax"] = {
      ["name"] = "flax",
      ["tier"] = "2",
      ["id"] = "125",
      ["attributes"] = {[1] = "silk", [2] = "tendrilly", [3] = "addictive"}
   },
   ["cocoa"] = {
      ["name"] = "cocoa",
      ["tier"] = "3",
      ["id"] = "12",
      ["attributes"] = {[1] = "brown", [2] = "food", [3] = "stem"}
   },
   ["gold oreberry"] = {
      ["name"] = "gold oreberry",
      ["tier"] = "5",
      ["id"] = "52",
      ["attributes"] = {[1] = "oreberry", [2] = "gold", [3] = "metal"}
   },
   ["red stonelilly"] = {
      ["name"] = "red stonelilly",
      ["tier"] = "1",
      ["id"] = "33",
      ["attributes"] = {[1] = "red", [2] = "stone", [3] = "fire"}
   },
   ["venomilia"] = {
      ["name"] = "venomilia",
      ["tier"] = "3",
      ["id"] = "9",
      ["attributes"] = {[1] = "purple", [2] = "flower", [3] = "tulip", [4] = "poison"}
   },
   ["blightberry"] = {
      ["name"] = "blightberry",
      ["tier"] = "4",
      ["id"] = "40",
      ["attributes"] = {[1] = "berry", [2] = "toxic", [3] = "bad", [4] = "green", [5] = "nether", [6] = "addictive"}
   },
   ["tulip"] = {
      ["name"] = "tulip",
      ["tier"] = "2",
      ["id"] = "7",
      ["attributes"] = {[1] = "purple", [2] = "flower", [3] = "tulip"}
   }
}

return cropdata
