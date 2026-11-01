scoreboard players remove @s pnp.vench 1
execute store result score #roll pnp.tmp run random value 1..3
execute if score #roll pnp.tmp matches 1 run tellraw @s {translate:"pnp.vanilla.enchanting_sparked_an_idea",fallback:"Enchanting sparked an idea!",color:"light_purple"}
execute if score #roll pnp.tmp matches 1 run function pnp:vanilla/idea
execute if score @s pnp.vench matches 1.. run function pnp:vanilla/enchant
