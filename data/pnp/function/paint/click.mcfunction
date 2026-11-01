execute if score #click pnp.tmp matches 1 if score @s pnp.hover matches 1.. if function pnp:paint/hover_brush run return run function pnp:paint/stop_message
execute if score #click pnp.tmp matches 2 if score @s pnp.hover matches 1.. if function pnp:paint/hover_brush run return run function pnp:paint/next
tag @s add pnp.painter
execute as @e[type=marker,tag=pnp.cursor] if score @s pnp.pid = #me pnp.tmp at @s align xz run function pnp:paint/corner
tag @s remove pnp.painter
