tag @e[type=item_display,tag=pnp.cg_t] remove pnp.cg_t
data modify storage pnp:board cg.c set from entity @s item.components."minecraft:custom_data".cgc
scoreboard players operation #gh pnp.tmp = @s pnp.cgh
execute unless score @s pnp.cgm matches 1 run scoreboard players set #gh pnp.tmp -1
scoreboard players operation #tu pnp.tmp = @s pnp.cgu
scoreboard players set #ts pnp.tmp -1
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held,tag=!pnp.cg_carry,distance=..2] if score @s pnp.uid = #tu pnp.tmp run scoreboard players operation #ts pnp.tmp = @s pnp.stack
execute if score #ts pnp.tmp = #gh pnp.tmp run scoreboard players set #ts pnp.tmp -1
execute unless score #ts pnp.tmp matches -1 run scoreboard players operation @s pnp.cgr = #ts pnp.tmp
execute unless score #ts pnp.tmp matches -1 run function pnp:copper_golem/take with storage pnp:board cg
function pnp:copper_golem/pick_card with storage pnp:board cg
function pnp:copper_golem/next
