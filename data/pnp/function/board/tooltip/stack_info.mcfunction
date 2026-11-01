scoreboard players operation #ss pnp.tmp = @s pnp.stack
scoreboard players set #sn pnp.tmp 0
scoreboard players set #sv pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,distance=..128] if score @s pnp.stack = #ss pnp.tmp run function pnp:board/tooltip/stack_one
execute store result storage pnp:board tipj.sn int 1 run scoreboard players get #sn pnp.tmp
execute store result storage pnp:board tipj.sv int 1 run scoreboard players get #sv pnp.tmp
function pnp:economy/format_sell_value
