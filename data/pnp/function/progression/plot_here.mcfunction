execute store result score #pp2 pnp.tmp run data get entity @s Pos[0]
scoreboard players add #pp2 pnp.tmp 64
scoreboard players operation #pp2 pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board pph.p int 1 run scoreboard players get #pp2 pnp.tmp
