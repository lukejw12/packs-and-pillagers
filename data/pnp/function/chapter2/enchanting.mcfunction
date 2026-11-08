data modify storage pnp:cards defs.lapis_lazuli set value {id:"lapis_lazuli",name:"Lapis Lazuli",kind:"res",kn:"Resource",sell:2,desc:"Blue stone from deep caves. The Enchanting Table uses one per enchantment.",l1:"Blue stone from deep",l2:"caves. Enchanting",l3:"uses one each time.",atlas:"minecraft:items",sprite:"item/lapis_lazuli",give:"minecraft:lapis_lazuli",gn:1}
function pnp:api/add_card {id:"lapis_lazuli",category:"c1"}
data modify storage pnp:cards defs.book set value {id:"book",name:"Book",kind:"res",kn:"Resource",sell:3,desc:"Paper bound in leather. Builds an Enchanting Table.",l1:"Paper bound in",l2:"leather. Builds an",l3:"Enchanting Table.",atlas:"minecraft:items",sprite:"item/book",give:"minecraft:book",gn:1}
function pnp:api/add_card {id:"book",category:"c1"}
data modify storage pnp:cards defs.enchanting_table set value {id:"enchanting_table",name:"Enchanting Table",kind:"struct",kn:"Structure",sell:10,desc:"Stack a villager, Lapis Lazuli and a weapon or armor on it to enchant that gear. Enchant it again to raise the level, up to III.",l1:"Villager + Lapis +",l2:"a weapon or armor:",l3:"enchants the gear,",l4:"up to level III.",atlas:"minecraft:blocks",sprite:"block/enchanting_table_top",give:"minecraft:enchanting_table",gn:1}
function pnp:api/add_card {id:"enchanting_table",category:"c4"}
data modify storage pnp:cards recipes append value {r:246,in:{villager:1,paper:3,leather:1},n:5,time:40,use:["paper","paper","paper","leather"],out:["book"],il:[{c:"villager",n:1},{c:"paper",n:3},{c:"leather",n:1}]}
data modify storage pnp:cards unlock.paper append value 246
data modify storage pnp:cards recipes append value {r:247,in:{villager:1,book:1,diamond:2,obsidian:4},n:8,time:160,use:["book","diamond","diamond","obsidian","obsidian","obsidian","obsidian"],out:["enchanting_table"],il:[{c:"villager",n:1},{c:"book",n:1},{c:"diamond",n:2},{c:"obsidian",n:4}]}
data modify storage pnp:cards unlock.book append value 247
data modify storage pnp:cards unlock.lapis_lazuli append value 247
data modify storage pnp:cards recipes append value {r:248,in:{villager:1,enchanting_table:1,lapis_lazuli:1,wooden_sword:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"wooden_sword",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 248
data modify storage pnp:cards recipes append value {r:249,in:{villager:1,enchanting_table:1,lapis_lazuli:1,stone_sword:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"stone_sword",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 249
data modify storage pnp:cards recipes append value {r:250,in:{villager:1,enchanting_table:1,lapis_lazuli:1,iron_sword:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"iron_sword",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 250
data modify storage pnp:cards recipes append value {r:251,in:{villager:1,enchanting_table:1,lapis_lazuli:1,diamond_sword:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"diamond_sword",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 251
data modify storage pnp:cards recipes append value {r:252,in:{villager:1,enchanting_table:1,lapis_lazuli:1,netherite_sword:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"netherite_sword",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 252
data modify storage pnp:cards recipes append value {r:253,in:{villager:1,enchanting_table:1,lapis_lazuli:1,stone_axe:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"stone_axe",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 253
data modify storage pnp:cards recipes append value {r:254,in:{villager:1,enchanting_table:1,lapis_lazuli:1,iron_axe:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"iron_axe",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 254
data modify storage pnp:cards recipes append value {r:255,in:{villager:1,enchanting_table:1,lapis_lazuli:1,spear:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"spear",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 255
data modify storage pnp:cards recipes append value {r:256,in:{villager:1,enchanting_table:1,lapis_lazuli:1,mace:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"mace",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 256
data modify storage pnp:cards recipes append value {r:257,in:{villager:1,enchanting_table:1,lapis_lazuli:1,trident:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"trident",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 257
data modify storage pnp:cards recipes append value {r:258,in:{villager:1,enchanting_table:1,lapis_lazuli:1,bow:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"bow",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 258
data modify storage pnp:cards recipes append value {r:259,in:{villager:1,enchanting_table:1,lapis_lazuli:1,crossbow:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"crossbow",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 259
data modify storage pnp:cards recipes append value {r:260,in:{villager:1,enchanting_table:1,lapis_lazuli:1,leather_tunic:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"leather_tunic",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 260
data modify storage pnp:cards recipes append value {r:261,in:{villager:1,enchanting_table:1,lapis_lazuli:1,iron_chestplate:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"iron_chestplate",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 261
data modify storage pnp:cards recipes append value {r:262,in:{villager:1,enchanting_table:1,lapis_lazuli:1,diamond_chestplate:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"diamond_chestplate",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 262
data modify storage pnp:cards recipes append value {r:263,in:{villager:1,enchanting_table:1,lapis_lazuli:1,netherite_chestplate:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"netherite_chestplate",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 263
data modify storage pnp:cards recipes append value {r:264,in:{villager:1,enchanting_table:1,lapis_lazuli:1,golden_helmet:1},n:4,time:80,use:["lapis_lazuli"],out:["#enchant"],il:[{c:"villager",n:1},{c:"enchanting_table",n:1},{c:"lapis_lazuli",n:1},{c:"golden_helmet",n:1}]}
data modify storage pnp:cards unlock.enchanting_table append value 264
data modify storage pnp:cards ench_gear set value {wooden_sword:{k:"w",e:"sharpness"},stone_sword:{k:"w",e:"sharpness"},iron_sword:{k:"w",e:"sharpness"},diamond_sword:{k:"w",e:"sharpness"},netherite_sword:{k:"w",e:"sharpness"},stone_axe:{k:"w",e:"sharpness"},iron_axe:{k:"w",e:"sharpness"},spear:{k:"w",e:"sharpness"},mace:{k:"w",e:"density"},trident:{k:"w",e:"impaling"},bow:{k:"w",e:"power"},crossbow:{k:"w",e:"piercing"},leather_tunic:{k:"a"},iron_chestplate:{k:"a"},diamond_chestplate:{k:"a"},netherite_chestplate:{k:"a"},golden_helmet:{k:"a"}}
function pnp:chapter2/pool_add {p:"cave",c:"lapis_lazuli",w:3}
function pnp:chapter2/pool_add {p:"mountain",c:"lapis_lazuli",w:1}
function pnp:chapter2/pool_add {p:"caving",c:"lapis_lazuli",w:3}
data modify storage pnp:cards from_item."minecraft:lapis_lazuli" set value {c:"lapis_lazuli",g:1}
data modify storage pnp:cards from_item."minecraft:book" set value {c:"book",g:1}
data modify storage pnp:cards from_item."minecraft:enchanting_table" set value {c:"enchanting_table",g:1}
