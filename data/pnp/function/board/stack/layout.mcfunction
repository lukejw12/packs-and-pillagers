scoreboard players set #lsize pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.stack = #lsid pnp.tmp run scoreboard players add #lsize pnp.tmp 1
scoreboard players set #lk pnp.tmp 0
execute if score #lsize pnp.tmp matches 1.. run function pnp:board/stack/layout_step
