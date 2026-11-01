scoreboard players operation #tt pnp.tmp = @s pnp.here
scoreboard players operation #tme2 pnp.tmp = #me pnp.tmp
scoreboard players operation #me pnp.tmp = #tt pnp.tmp
execute unless entity @e[type=item_display,tag=pnp.port,distance=..48] run function pnp:wrench/port/here
scoreboard players operation #me pnp.tmp = #tme2 pnp.tmp
