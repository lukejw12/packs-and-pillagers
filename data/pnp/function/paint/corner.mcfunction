execute unless block ~ 64 ~ #pnp:felt run return 0
execute store result score #pcx pnp.tmp run data get entity @s Pos[0]
execute store result score #pcz pnp.tmp run data get entity @s Pos[2]
execute unless score @p[tag=pnp.painter] pnp.pcs matches 1 run return run function pnp:paint/corner_a
function pnp:paint/corner_b
