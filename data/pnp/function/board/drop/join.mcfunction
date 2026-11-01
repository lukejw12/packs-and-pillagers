scoreboard players operation @s pnp.stack = #tsid pnp.tmp
scoreboard players operation @s pnp.idx += #tsize pnp.tmp
tag @s remove pnp.held
function pnp:card/glow/clear
