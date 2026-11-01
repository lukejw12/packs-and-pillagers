execute if score @s pnp.born >= #day pnp.tmp run return 0
scoreboard players add @s pnp.suppers 1
function pnp:board/plot/get_coords
function pnp:supper/run with storage pnp:board tmp
execute unless entity @e[type=item_display,tag=pnp.held,distance=..64] run scoreboard players set @s pnp.holding 0
