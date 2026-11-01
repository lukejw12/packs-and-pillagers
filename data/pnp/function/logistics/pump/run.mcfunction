execute unless entity @s[tag=pnp.hasout] run return run function pnp:logistics/pump/spill_all
scoreboard players set #pi pnp.tmp 0
scoreboard players set #psent pnp.tmp 0
execute store result score #pl pnp.tmp run data get entity @s item.components."minecraft:custom_data".hb
function pnp:logistics/pump/loop
execute if score #psent pnp.tmp matches 1.. run scoreboard players set @s pnp.stuck 0
execute if score #psent pnp.tmp matches 0 run scoreboard players add @s pnp.stuck 1
execute if score @s pnp.stuck matches 6.. run function pnp:logistics/pump/unjam
execute if score #psent pnp.tmp matches 1.. if entity @s[tag=pnp.c.dropper] run playsound minecraft:block.dispenser.dispense block @a[distance=..24] ~ ~ ~ 0.25 1.4
function pnp:logistics/label/update
