data modify storage pnp:pedia2 cat.c10 set value {tk:"pnp.book.pedia.cat.other",n:"Other",rep:"admin_codex",ids:["admin_codex","cardopedia","guide_book","invader","invader_golem","invader_wolf","recipe_book","sell_box","shop_adventure","shop_caving","shop_combat","shop_farm","shop_humble","shop_side","wandering_trader"]}
execute unless data storage pnp:pedia2 meta.admin_codex run function pnp:api/card/cardopedia_entry {id:"admin_codex"}
execute unless data storage pnp:pedia2 meta.cardopedia run function pnp:api/card/cardopedia_entry {id:"cardopedia"}
execute unless data storage pnp:pedia2 meta.guide_book run function pnp:api/card/cardopedia_entry {id:"guide_book"}
execute unless data storage pnp:pedia2 meta.invader run function pnp:api/card/cardopedia_entry {id:"invader"}
execute unless data storage pnp:pedia2 meta.invader_golem run function pnp:api/card/cardopedia_entry {id:"invader_golem"}
execute unless data storage pnp:pedia2 meta.invader_wolf run function pnp:api/card/cardopedia_entry {id:"invader_wolf"}
execute unless data storage pnp:pedia2 meta.recipe_book run function pnp:api/card/cardopedia_entry {id:"recipe_book"}
execute unless data storage pnp:pedia2 meta.sell_box run function pnp:api/card/cardopedia_entry {id:"sell_box"}
execute unless data storage pnp:pedia2 meta.shop_adventure run function pnp:api/card/cardopedia_entry {id:"shop_adventure"}
execute unless data storage pnp:pedia2 meta.shop_caving run function pnp:api/card/cardopedia_entry {id:"shop_caving"}
execute unless data storage pnp:pedia2 meta.shop_combat run function pnp:api/card/cardopedia_entry {id:"shop_combat"}
execute unless data storage pnp:pedia2 meta.shop_farm run function pnp:api/card/cardopedia_entry {id:"shop_farm"}
execute unless data storage pnp:pedia2 meta.shop_humble run function pnp:api/card/cardopedia_entry {id:"shop_humble"}
execute unless data storage pnp:pedia2 meta.shop_side run function pnp:api/card/cardopedia_entry {id:"shop_side"}
execute unless data storage pnp:pedia2 meta.wandering_trader run function pnp:api/card/cardopedia_entry {id:"wandering_trader"}
execute unless data storage pnp:pedia2 cat.c8{ids:["idea_copper_bulb"]} run data modify storage pnp:pedia2 cat.c8.ids append value "idea_copper_bulb"
execute unless data storage pnp:pedia2 meta.idea_copper_bulb run function pnp:api/card/cardopedia_entry {id:"idea_copper_bulb"}
execute unless data storage pnp:pedia2 cat.c8{ids:["idea_copper_barrel"]} run data modify storage pnp:pedia2 cat.c8.ids append value "idea_copper_barrel"
execute unless data storage pnp:pedia2 meta.idea_copper_barrel run function pnp:api/card/cardopedia_entry {id:"idea_copper_barrel"}
data modify storage pnp:pedia2 cat.c11 set value {n:"Settings",tk:"pnp.book.pedia.cat.settings",rep:"wrench",ids:[]}
data modify storage pnp:cards army set value [{t: "iron_sword",a: "iron_chestplate",s: "totem"},{t: "diamond_sword",a: "diamond_chestplate",s: "compass"},{t: "netherite_sword",a: "netherite_chestplate",s: "blaze_charm"},{t: "bow",a: "golden_helmet",s: "gilded_charm"},{t: "crossbow",a: "leather_tunic",s: "horse"},{t: "trident",a: "iron_chestplate",s: "rabbit_foot"},{t: "mace",a: "diamond_chestplate",s: "bone"},{t: "spear",a: "netherite_chestplate",s: "clock"},{t: "iron_axe",a: "golden_helmet",s: "totem"},{t: "stone_sword",a: "leather_tunic",s: "compass"},{t: "evocation_staff",a: "iron_chestplate",s: "blaze_charm"},{t: "shield",a: "diamond_chestplate",s: "gilded_charm"},{t: "iron_sword",a: "netherite_chestplate",s: "horse"},{t: "diamond_sword",a: "golden_helmet",s: "rabbit_foot"},{t: "netherite_sword",a: "leather_tunic",s: "bone"},{t: "bow",a: "iron_chestplate",s: "clock"}]
