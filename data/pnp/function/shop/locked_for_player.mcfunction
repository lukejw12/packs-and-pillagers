$execute unless data storage pnp:packs p$(p).v run return fail
$execute store result score #qlm pnp.tmp run data get storage pnp:qb p$(p).m
execute if entity @s[tag=pnp.c.shop_fortress] if score #qlm pnp.tmp matches 24.. run return fail
execute if entity @s[tag=pnp.c.shop_bastion] if score #qlm pnp.tmp matches 26.. run return fail
execute if entity @s[tag=pnp.c.shop_combat] if score #qlm pnp.tmp matches 9.. run return fail
execute if entity @s[tag=pnp.c.shop_caving] if score #qlm pnp.tmp matches 8.. run return fail
execute if entity @s[tag=pnp.c.shop_adventure] if score #qlm pnp.tmp matches 7.. run return fail
execute if entity @s[tag=pnp.c.shop_farm] if score #qlm pnp.tmp matches 4.. run return fail
execute if entity @s[tag=pnp.c.shop_farm] run data modify storage pnp:board lk merge value {k:"humble",qk:"pnp.card.q_survivor.name",qf:"Survivor",kn:"Humble"}
execute if entity @s[tag=pnp.c.shop_adventure] run data modify storage pnp:board lk merge value {k:"farm",qk:"pnp.card.q_housing.name",qf:"New Homes",kn:"Farm"}
execute if entity @s[tag=pnp.c.shop_combat] run data modify storage pnp:board lk merge value {k:"adventure",qk:"pnp.quest_board.iron_age",qf:"Iron Age",kn:"Adventure"}
execute if entity @s[tag=pnp.c.shop_caving] run data modify storage pnp:board lk merge value {k:"adventure",qk:"pnp.quest_board.q.m_hearth",qf:"Hearth",kn:"Adventure"}
execute if entity @s[tag=pnp.c.shop_fortress] run data modify storage pnp:board lk merge value {k:"wastes",qk:"pnp.quest_board.c2_fortress",qf:"A Fortress in the Fire",kn:"Wastes"}
execute if entity @s[tag=pnp.c.shop_bastion] run data modify storage pnp:board lk merge value {k:"fortress",qk:"pnp.quest_board.c2_bgate",qf:"The Bastion",kn:"Fortress"}
return run function pnp:shop/locked_key with storage pnp:board lk
