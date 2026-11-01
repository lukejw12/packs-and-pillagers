scoreboard players operation @s pnp.stack = #tsid pnp.tmp
scoreboard players operation @s pnp.idx = @s pnp.cgi
scoreboard players remove @s pnp.idx 1
scoreboard players operation @s pnp.idx += #tsize pnp.tmp
tag @s remove pnp.cg_carry
tag @s remove pnp.held
scoreboard players reset @s pnp.cgo
scoreboard players reset @s pnp.cgi
function pnp:card/glow/clear
