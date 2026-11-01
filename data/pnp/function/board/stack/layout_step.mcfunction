execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.stack = #lsid pnp.tmp if score @s pnp.idx = #lk pnp.tmp run tp @s ~ ~ ~
scoreboard players add #lk pnp.tmp 1
execute if score #lk pnp.tmp < #lsize pnp.tmp positioned ~ ~0.02 ~0.3125 run function pnp:board/stack/layout_step
