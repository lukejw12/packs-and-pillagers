execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.stack = #csid pnp.tmp if score @s pnp.idx = #old pnp.tmp run function pnp:board/stack/compact_one
scoreboard players add #old pnp.tmp 1
execute if score #old pnp.tmp matches ..40 run function pnp:board/stack/compact_step
