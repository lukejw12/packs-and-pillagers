execute if score @s pnp.hover matches ..0 run return run function pnp:board/tooltip/hide
scoreboard players operation #uid pnp.tmp = @s pnp.hover
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp run function pnp:board/tooltip/read
function pnp:board/tooltip/build with storage pnp:board tipj
execute rotated ~ 0 as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp positioned as @s as @e[type=text_display,tag=pnp.tooltip] if score @s pnp.pid = #me pnp.tmp run function pnp:board/tooltip/place
