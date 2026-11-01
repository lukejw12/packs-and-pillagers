scoreboard players set #new pnp.tmp 0
scoreboard players set #old pnp.tmp 0
function pnp:board/stack/compact_step
scoreboard players operation #lsid pnp.tmp = #csid pnp.tmp
function pnp:board/stack/layout
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.stack = #csid pnp.tmp if score @s pnp.idx matches 0 at @s run function pnp:board/stack/check
