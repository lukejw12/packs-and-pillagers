tag @e[type=item_display,tag=pnp.inrec] remove pnp.inrec
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held,distance=..64] if score @s pnp.stack = #csid pnp.tmp run tag @s add pnp.inrec
data modify storage pnp:board work.use set from storage pnp:board rec.use
function pnp:board/recipe/use_loop
data modify storage pnp:board work.out set from storage pnp:board rec.out
scoreboard players set #rsrc pnp.tmp 0
execute if entity @s[tag=pnp.hasout] run scoreboard players operation #rsrc pnp.tmp = @s pnp.uid
function pnp:board/recipe/output_loop
scoreboard players set #rsrc pnp.tmp 0
tag @e[type=item_display,tag=pnp.inrec] remove pnp.inrec
execute if data storage pnp:board rec.use[0] run function pnp:board/stack/compact
