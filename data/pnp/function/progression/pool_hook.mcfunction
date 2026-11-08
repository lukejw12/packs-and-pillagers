execute store result score #php pnp.tmp run data get entity @s Pos[0]
scoreboard players add #php pnp.tmp 64
scoreboard players operation #php pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board phk.p int 1 run scoreboard players get #php pnp.tmp
data modify storage pnp:board phk.pool set from storage pnp:board ch.p
return run function pnp:progression/pool_hook_p with storage pnp:board phk
