scoreboard players set #gp pnp.tmp 1
tag @s add pnp.gsnap
scoreboard players operation #lsid pnp.tmp = @s pnp.stack
function pnp:board/stack/layout
