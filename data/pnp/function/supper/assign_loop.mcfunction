execute as @e[type=item_display,tag=pnp.meal] if score @s pnp.mown = #me pnp.tmp if score @s pnp.mord = #m pnp.tmp run function pnp:supper/assign_one
scoreboard players add #m pnp.tmp 1
execute if score #m pnp.tmp <= #mo pnp.tmp run function pnp:supper/assign_loop
