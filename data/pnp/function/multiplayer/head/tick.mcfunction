scoreboard players set #hh pnp.tmp 0
execute as @e[type=item_display,tag=pnp.phead] if score @s pnp.pid = #me pnp.tmp run scoreboard players add #hh pnp.tmp 1
execute if score #hh pnp.tmp matches 2.. as @e[type=item_display,tag=pnp.phead] if score @s pnp.pid = #me pnp.tmp run kill @s
execute unless score #hh pnp.tmp matches 1 run function pnp:multiplayer/head/make
scoreboard players set #hm pnp.tmp 0
execute as @e[type=marker,tag=pnp.cursor] if score @s pnp.pid = #me pnp.tmp if score #hm pnp.tmp matches 0 at @s run function pnp:multiplayer/head/follow
