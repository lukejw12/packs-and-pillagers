scoreboard players add @s pnp.cgt 1
execute if score @s pnp.cgt matches ..39 run return 0
scoreboard players set @s pnp.cgt 0
execute as @e[type=item_display,tag=pnp.card,tag=pnp.k.res,tag=!pnp.held,tag=!pnp.infight,tag=!pnp.cg_carry,distance=..20] at @s if function pnp:copper_golem/top_card run tag @s add pnp.cg_cand
execute as @e[type=item_display,tag=pnp.card,tag=pnp.k.food,tag=!pnp.held,tag=!pnp.infight,tag=!pnp.cg_carry,distance=..20] at @s if function pnp:copper_golem/top_card run tag @s add pnp.cg_cand
scoreboard players set #gtry pnp.tmp 0
function pnp:copper_golem/try
execute unless score @s pnp.cgs matches 1.. run scoreboard players set @s pnp.cgt -60
tag @e[type=item_display,tag=pnp.cg_cand] remove pnp.cg_cand
