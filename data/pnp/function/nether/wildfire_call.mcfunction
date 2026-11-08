scoreboard players set @s pnp.spell 0
scoreboard players add @s pnp.wsh 2
execute if score @s pnp.wsh matches 5.. run scoreboard players set @s pnp.wsh 4
scoreboard players operation #bf pnp.tmp = @s pnp.fid
particle minecraft:flame ~ ~0.3 ~ 0.8 0.1 0.8 0.05 40
playsound minecraft:entity.blaze.shoot hostile @a[distance=..24] ~ ~ ~ 0.8 0.8
data modify storage pnp:board cause set value "A fire volley from the Wildfire"
scoreboard players set #atk pnp.tmp 1
tag @s add pnp.atkr
execute as @e[type=item_display,tag=pnp.k.unit,tag=pnp.infight,distance=..14] if score @s pnp.fid = #bf pnp.tmp at @s run function pnp:fight/hit
tag @s remove pnp.atkr
execute store result score #wb pnp.tmp if entity @e[type=item_display,tag=pnp.c.blaze,distance=..15]
execute if score #wb pnp.tmp matches ..1 positioned ~1.6 65.01 ~-1.2 run function pnp:card/spawn {card:"blaze"}
execute if score #wb pnp.tmp matches ..1 as @e[type=item_display,tag=pnp.card] if score @s pnp.uid = #uid pnp.ids at @s run function pnp:gateway/arena/mob
