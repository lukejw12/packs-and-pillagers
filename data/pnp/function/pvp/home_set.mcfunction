tag @s add pnp.pvback
data modify entity @s item.components."minecraft:custom_data" merge from storage pnp:pvp hu.d
execute if entity @s[tag=pnp.c.villager] run function pnp:villager/recalculate
$scoreboard players set @s pnp.hp $(hp)
execute if score @s pnp.hp > @s pnp.hpmax run scoreboard players operation @s pnp.hp = @s pnp.hpmax
particle minecraft:happy_villager ~ ~0.4 ~ 0.2 0.1 0.2 0 6
