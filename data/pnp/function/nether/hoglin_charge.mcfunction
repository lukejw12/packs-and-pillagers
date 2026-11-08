scoreboard players set @s pnp.spell 0
scoreboard players operation #bf pnp.tmp = @s pnp.fid
particle minecraft:crit ~ ~0.3 ~ 0.8 0.1 0.8 0.3 30
particle minecraft:cloud ~ ~0.1 ~ 0.6 0.05 0.6 0.02 12
playsound minecraft:entity.hoglin.attack hostile @a[distance=..24] ~ ~ ~ 1 0.7
data modify storage pnp:board cause set value "A charge from the Mutated Hoglin"
scoreboard players set #atk pnp.tmp 1
execute as @e[type=item_display,tag=pnp.k.unit,tag=pnp.infight,distance=..14] if score @s pnp.fid = #bf pnp.tmp at @s run function pnp:fight/hit
