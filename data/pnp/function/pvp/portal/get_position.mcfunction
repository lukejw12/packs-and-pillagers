execute if score #hasp pnp.tmp matches 1 run return 0
scoreboard players set #hasp pnp.tmp 1
data modify storage pnp:pvp sp.px set from entity @s Pos[0]
data modify storage pnp:pvp sp.pz set from entity @s Pos[2]
execute at @s run particle minecraft:portal ~ ~0.4 ~ 0.4 0.3 0.4 0.6 90 force
execute at @s run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 0.8 1.3
