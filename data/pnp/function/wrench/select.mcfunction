scoreboard players operation #ph pnp.tmp = @s pnp.ph
execute as @e[type=item_display,tag=pnp.port,distance=..48] if score @s pnp.portid = #ph pnp.tmp run tag @s add pnp.psel
function pnp:wrench/recolor
playsound minecraft:block.lever.click master @s ~ ~ ~ 0.6 1.6
