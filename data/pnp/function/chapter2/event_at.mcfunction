execute store result score #qep pnp.tmp run data get entity @s Pos[0]
scoreboard players add #qep pnp.tmp 64
scoreboard players operation #qep pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board qce.o int 1 run scoreboard players get #qep pnp.tmp
$data modify storage pnp:board qce.qk set value "$(qk)"
function pnp:quest/on_event with storage pnp:board qce
