scoreboard players operation @s pnp.bcu = #muid pnp.tmp
execute as @e[type=item_display,tag=pnp.cm,distance=..20] if score @s pnp.uid = #muid pnp.tmp run function pnp:beacon/status
scoreboard players enable @s pnp.bcn
function pnp:beacon/dialog with storage pnp:beacon st
