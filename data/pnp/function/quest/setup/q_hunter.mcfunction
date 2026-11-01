data modify entity @s item.components."minecraft:custom_data".qk set value "kill"
data modify entity @s item.components."minecraft:custom_data".want set value ""
scoreboard players set @s pnp.qprog 0
execute store result score @s pnp.qneed run random value 3..8
execute store result score #qo pnp.tmp run random value 0..1
execute if score #qo pnp.tmp matches 0 run data modify entity @s item.components."minecraft:custom_data".rw set value ["combat_pack"]
execute if score #qo pnp.tmp matches 0 run data modify entity @s item.components."minecraft:custom_data".rwd set value "Combat Pack"
execute if score #qo pnp.tmp matches 1 run data modify entity @s item.components."minecraft:custom_data".rw set value ["iron_sword"]
execute if score #qo pnp.tmp matches 1 run data modify entity @s item.components."minecraft:custom_data".rwd set value "Iron Sword"
function pnp:quest/label
particle minecraft:happy_villager ~ ~0.3 ~ 0.3 0.1 0.3 0 8
playsound minecraft:item.book.page_turn master @a[distance=..40] ~ ~ ~ 0.8 1
