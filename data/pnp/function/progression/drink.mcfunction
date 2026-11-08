scoreboard players set #route pnp.tmp 1
data modify storage pnp:board pdi.c set from entity @s item.components."minecraft:custom_data".card
function pnp:card/remove
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s run function pnp:progression/drink_on with storage pnp:board pdi
