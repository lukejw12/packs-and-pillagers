execute unless score #tsid pnp.tmp matches 0 run return 0
scoreboard players operation #pcs pnp.tmp = @s pnp.stack
scoreboard players set #bad pnp.tmp 0
scoreboard players set #psize pnp.tmp 0
$execute as @e[type=item_display,tag=pnp.card,tag=!pnp.c.$(card),distance=..8] if score @s pnp.stack = #pcs pnp.tmp run scoreboard players set #bad pnp.tmp 1
execute as @e[type=item_display,tag=pnp.card,distance=..8] if score @s pnp.stack = #pcs pnp.tmp run scoreboard players add #psize pnp.tmp 1
execute if score #bad pnp.tmp matches 1 run return 0
execute if score #psize pnp.tmp matches 15.. run return 0
scoreboard players operation #tsid pnp.tmp = #pcs pnp.tmp
scoreboard players operation #tsize pnp.tmp = #psize pnp.tmp
