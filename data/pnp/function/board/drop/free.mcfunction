scoreboard players operation #lsid pnp.tmp = #hsid pnp.tmp
function pnp:board/stack/layout
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:board/drop/release
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.stack = #hsid pnp.tmp if score @s pnp.idx matches 0 at @s run function pnp:board/stack/check
