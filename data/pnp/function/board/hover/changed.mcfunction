scoreboard players operation @s pnp.hover = #h pnp.tmp
function pnp:board/hover/clear
execute if score @s pnp.hover matches 1.. run function pnp:board/hover/mark
scoreboard players set @s pnp.info 40
