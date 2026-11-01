scoreboard players remove @s pnp.vtrade 1
execute store result score #roll pnp.tmp run random value 1..10
execute if score #roll pnp.tmp matches 1 run tellraw @s {translate:"pnp.vanilla.a_villager_you_traded_with_shared",fallback:"A villager you traded with shared an idea!",color:"yellow"}
execute if score #roll pnp.tmp matches 1 run function pnp:vanilla/idea
execute if score @s pnp.vtrade matches 1.. run function pnp:vanilla/trade
