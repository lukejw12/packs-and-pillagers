scoreboard players operation @s pnp.stack = #stack pnp.ids
scoreboard players operation @s pnp.idx -= #tk pnp.tmp
scoreboard players set @s pnp.recipe 0
scoreboard players set @s pnp.timer 0
scoreboard players set @s pnp.target 0
tag @s remove pnp.hl
tag @s add pnp.held
function pnp:card/glow/held
