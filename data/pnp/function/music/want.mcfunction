scoreboard players set #want pnp.tmp 1
execute if score #mnight pnp.tmp matches 1 run scoreboard players set #want pnp.tmp 2
execute if score @s pnp.raid matches 1.. run scoreboard players set #want pnp.tmp 3
execute if score @s pnp.gws matches 1.. run scoreboard players set #want pnp.tmp 3
execute if score @s pnp.gwj matches 1.. run scoreboard players set #want pnp.tmp 3
execute if entity @e[type=item_display,tag=pnp.inv,distance=..64] run scoreboard players set #want pnp.tmp 3
execute if entity @e[type=item_display,tag=pnp.boss,tag=!pnp.mini,tag=!pnp.c.redstone_monstrosity,distance=..64] run scoreboard players set #want pnp.tmp 4
execute if entity @e[type=item_display,tag=pnp.c.redstone_monstrosity,distance=..64] run scoreboard players set #want pnp.tmp 5
execute if score #want pnp.tmp matches ..2 if entity @e[type=item_display,tag=pnp.c.pigstep,distance=..40] run scoreboard players set #want pnp.tmp 6
