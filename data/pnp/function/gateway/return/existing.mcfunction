scoreboard players set #rhas pnp.tmp 1
tag @s add pnp.ret_base
scoreboard players operation #rst pnp.tmp = @s pnp.stack
scoreboard players set #ridx pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,distance=..4] if score @s pnp.stack = #rst pnp.tmp if score @s pnp.idx > #ridx pnp.tmp run scoreboard players operation #ridx pnp.tmp = @s pnp.idx
scoreboard players add #ridx pnp.tmp 1
