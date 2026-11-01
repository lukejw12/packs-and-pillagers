scoreboard players set @s pnp.bsp 0
scoreboard players operation #bf pnp.tmp = @s pnp.fid
particle minecraft:gust ~ ~0.3 ~ 0.6 0.1 0.6 0 6
playsound minecraft:entity.breeze.wind_burst master @a[distance=..24] ~ ~ ~ 0.8 1
data modify storage pnp:board cause set value "A gust from the Breeze"
scoreboard players set #atk pnp.tmp 1
execute as @e[type=item_display,tag=pnp.k.unit,tag=pnp.infight,distance=..14] if score @s pnp.fid = #bf pnp.tmp at @s run function pnp:fight/hit
