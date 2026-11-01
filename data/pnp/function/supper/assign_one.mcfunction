scoreboard players operation @s pnp.mtgt = #k pnp.tmp
execute if score #kx pnp.tmp matches 0 run scoreboard players operation @s pnp.mtgt = #vo pnp.tmp
scoreboard players operation #pool pnp.tmp += @s pnp.mval
function pnp:supper/settle
