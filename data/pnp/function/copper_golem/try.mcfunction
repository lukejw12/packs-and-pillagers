execute if score @s pnp.cgs matches 1.. run return 0
execute if score #gtry pnp.tmp matches 6.. run return 0
scoreboard players add #gtry pnp.tmp 1
tag @e[type=item_display,tag=pnp.cg_cand,sort=random,limit=1] add pnp.cg_pick
execute unless entity @e[type=item_display,tag=pnp.cg_pick] run return 0
data modify storage pnp:board cg.c set from entity @e[type=item_display,tag=pnp.cg_pick,limit=1] item.components."minecraft:custom_data".card
execute if function pnp:copper_golem/has_destination run function pnp:copper_golem/start
execute unless score @s pnp.cgs matches 1.. run function pnp:copper_golem/sort_start
function pnp:copper_golem/try_drop with storage pnp:board cg
tag @e[type=item_display,tag=pnp.cg_pick] remove pnp.cg_pick
function pnp:copper_golem/try
