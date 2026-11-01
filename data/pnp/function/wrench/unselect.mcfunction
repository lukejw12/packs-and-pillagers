execute as @e[type=item_display,tag=pnp.port,tag=pnp.psel,distance=..48] run tag @s remove pnp.psel
scoreboard players operation #ph pnp.tmp = @s pnp.ph
function pnp:wrench/recolor
