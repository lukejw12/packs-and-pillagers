execute if score #sent pnp.tmp matches 1 run return 0
scoreboard players operation #du pnp.tmp = @s pnp.ldst
scoreboard players operation #pn pnp.tmp = @s pnp.ldp
tag @e[type=item_display,tag=pnp.rdst] remove pnp.rdst
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held,distance=..40] if score @s pnp.uid = #du pnp.tmp if function pnp:route/accepts if function pnp:route/tier_check run tag @s add pnp.rdst
execute unless entity @e[type=item_display,tag=pnp.rdst] run return 0
scoreboard players set #sent pnp.tmp 1
execute as @e[type=item_display,tag=pnp.rdst,limit=1] run function pnp:wrench/port/position_b
scoreboard players operation #tt pnp.tmp = @s pnp.llen
scoreboard players operation #tt pnp.tmp /= #200 pnp.tmp
scoreboard players add #tt pnp.tmp 5
execute if score #tt pnp.tmp matches 60.. run scoreboard players set #tt pnp.tmp 59
function pnp:route/spawn with storage pnp:board rt
tag @e[type=item_display,tag=pnp.rdst] remove pnp.rdst
