$data modify storage pnp:board il.list set from storage pnp:cards ideas.$(c).r
$data modify storage pnp:board il.name set from storage pnp:cards ideas.$(c).name
scoreboard players set #newr pnp.tmp 0
function pnp:idea/learn_loop
function pnp:idea/found with storage pnp:board il
execute if score #newr pnp.tmp matches 0 run return run function pnp:idea/duplicate
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp at @s run function pnp:idea/reveal with storage pnp:board il
function pnp:idea/message with storage pnp:board il
