data modify entity @s item.components."minecraft:custom_data".cgc set from storage pnp:board cg.c
execute store result score @s pnp.cgu run scoreboard players get @e[type=item_display,tag=pnp.cg_pick,limit=1] pnp.uid
scoreboard players set @s pnp.cgn 0
scoreboard players set @s pnp.cgs 1
data merge entity @s {teleport_duration:2}
scoreboard players set @s pnp.cgm 0
scoreboard players set @s pnp.cgh 0
