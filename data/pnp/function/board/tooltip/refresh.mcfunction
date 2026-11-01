scoreboard players set @s pnp.tipt 26
scoreboard players operation #uid pnp.tmp = @s pnp.hover
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp run function pnp:board/tooltip/read
function pnp:board/tooltip/build with storage pnp:board tipj
execute store result storage pnp:board tr.p int 1 run scoreboard players get #me pnp.tmp
function pnp:board/tooltip/set_refresh with storage pnp:board tr
