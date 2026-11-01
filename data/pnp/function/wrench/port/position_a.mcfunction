function pnp:wrench/port/position
scoreboard players operation #ax pnp.tmp = #px pnp.tmp
scoreboard players operation #az pnp.tmp = #pz pnp.tmp
scoreboard players set #fa pnp.tmp 1
