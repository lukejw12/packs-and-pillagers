scoreboard players set @s pnp.spell 0
particle minecraft:explosion ~ ~0.2 ~ 2.5 0.1 2.5 0 6
particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~0.2 ~ 3 0.1 3 0 60
playsound minecraft:entity.iron_golem.attack hostile @a[distance=..40] ~ ~ ~ 1.2 0.5
playsound minecraft:entity.generic.explode hostile @a[distance=..40] ~ ~ ~ 0.6 0.8
data modify storage pnp:board cause set value "Slammed by the Redstone Monstrosity"
execute as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..7] at @s run function pnp:redstone_caves/slam_hit
