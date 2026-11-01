scoreboard players set @s pnp.spell 0
particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~0.2 ~ 1.4 0.1 1.4 0 30
playsound minecraft:entity.iron_golem.attack hostile @a[distance=..32] ~ ~ ~ 1 0.7
data modify storage pnp:board cause set value "Pounded by a Redstone Golem"
execute as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..3] at @s run function pnp:redstone_caves/golem/pound_hit
