execute store result score #qo pnp.tmp run data get entity @s Pos[0]
scoreboard players add #qo pnp.tmp 64
scoreboard players operation #qo pnp.tmp /= #1024 pnp.tmp
execute if score #qo pnp.tmp = #qp pnp.tmp run scoreboard players add #qh pnp.tmp 1
