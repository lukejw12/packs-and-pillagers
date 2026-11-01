data modify entity @s item.components."minecraft:custom_data".qk set value "village"
data modify entity @s item.components."minecraft:custom_data".want set value ""
scoreboard players set @s pnp.qprog 0
execute store result score @s pnp.qneed run random value 1..1
execute store result score #qo pnp.tmp run random value 0..1
execute if score #qo pnp.tmp matches 0 run data modify entity @s item.components."minecraft:custom_data".rw set value ["adventure_pack"]
execute if score #qo pnp.tmp matches 0 run data modify entity @s item.components."minecraft:custom_data".rwd set value "Adventure Pack"
execute if score #qo pnp.tmp matches 1 run data modify entity @s item.components."minecraft:custom_data".rw set value ["emerald","emerald","emerald","emerald","emerald"]
execute if score #qo pnp.tmp matches 1 run data modify entity @s item.components."minecraft:custom_data".rwd set value "5 Emeralds"
function pnp:quest/label
particle minecraft:happy_villager ~ ~0.3 ~ 0.3 0.1 0.3 0 8
playsound minecraft:item.book.page_turn master @a[distance=..40] ~ ~ ~ 0.8 1
