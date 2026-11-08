data modify storage pnp:board adm.al set from storage pnp:cards army
scoreboard players set #ai pnp.tmp 0
function pnp:admin/settings/army_loop
scoreboard players operation #lsid pnp.tmp = #ast pnp.tmp
execute as @e[type=item_display,tag=pnp.card,distance=..3] if score @s pnp.stack = #ast pnp.tmp if score @s pnp.idx matches 0 at @s run function pnp:board/stack/layout
