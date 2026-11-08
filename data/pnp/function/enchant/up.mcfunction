data modify storage pnp:board en set value {l:0}
data modify storage pnp:board en set from entity @s item.components."minecraft:custom_data".en
data modify storage pnp:board enm.c set from entity @s item.components."minecraft:custom_data".card
function pnp:enchant/up_k with storage pnp:board enm
execute store result score #enl pnp.tmp run data get storage pnp:board en.l
scoreboard players add #enl pnp.tmp 1
execute if score #enl pnp.tmp matches 4.. run scoreboard players set #enl pnp.tmp 3
execute store result storage pnp:board en.l int 1 run scoreboard players get #enl pnp.tmp
data modify entity @s item.components."minecraft:custom_data".en set from storage pnp:board en
data modify entity @s item.components."minecraft:enchantment_glint_override" set value 1b
particle minecraft:enchant ~ ~0.6 ~ 0.3 0.3 0.3 1 40
playsound minecraft:block.enchantment_table.use master @a[distance=..24] ~ ~ ~ 0.8 1
