data modify entity @s item.components."minecraft:custom_data".qk set value "have"
data modify entity @s item.components."minecraft:custom_data".want set value "villager"
scoreboard players set @s pnp.qprog 0
execute store result score @s pnp.qneed if entity @e[type=item_display,tag=pnp.c.villager,distance=..34]
scoreboard players add @s pnp.qneed 2
execute store result score #qo pnp.tmp run random value 0..1
execute if score #qo pnp.tmp matches 0 run data modify entity @s item.components."minecraft:custom_data".rw set value ["humble_pack", "humble_pack"]
execute if score #qo pnp.tmp matches 0 run data modify entity @s item.components."minecraft:custom_data".rwd set value "2 Humble Packs"
execute if score #qo pnp.tmp matches 1 run data modify entity @s item.components."minecraft:custom_data".rw set value ["adventure_pack"]
execute if score #qo pnp.tmp matches 1 run data modify entity @s item.components."minecraft:custom_data".rwd set value "Adventure Pack"
function pnp:quest/label
particle minecraft:happy_villager ~ ~0.3 ~ 0.3 0.1 0.3 0 8
playsound minecraft:item.book.page_turn master @a[distance=..40] ~ ~ ~ 0.8 1
