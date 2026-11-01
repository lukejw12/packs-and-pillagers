$execute in pnp:board positioned $(cx) 65 16 store result score #rv pnp.tmp if entity @e[type=item_display,tag=pnp.c.villager,distance=..23]
scoreboard players operation #rv pnp.tmp /= #2 pnp.tmp
scoreboard players operation #rn pnp.tmp += #rv pnp.tmp
execute if score #rn pnp.tmp matches 13.. run scoreboard players set #rn pnp.tmp 12
