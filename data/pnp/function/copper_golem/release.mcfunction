tag @s remove pnp.cg_carry
scoreboard players reset @s pnp.cgo
scoreboard players reset @s pnp.cgi
function pnp:board/drop/release
scoreboard players add #stack pnp.ids 1
scoreboard players operation @s pnp.stack = #stack pnp.ids
