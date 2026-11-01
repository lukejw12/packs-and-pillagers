function pnp:wrench/port/position
scoreboard players operation #bx2 pnp.tmp = #px pnp.tmp
scoreboard players operation #bz2 pnp.tmp = #pz pnp.tmp
scoreboard players set #fb pnp.tmp 1
