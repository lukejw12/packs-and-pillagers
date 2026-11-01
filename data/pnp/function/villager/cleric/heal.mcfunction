scoreboard players set @s pnp.study 0
execute as @e[type=item_display,tag=pnp.c.villager,distance=..2.5] if score @s pnp.hp < @s pnp.hpmax run function pnp:villager/heal_one
