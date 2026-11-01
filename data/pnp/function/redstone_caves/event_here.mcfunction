execute store result score #qko pnp.tmp run data get entity @s Pos[0]
scoreboard players add #qko pnp.tmp 64
scoreboard players operation #qko pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board qk.o int 1 run scoreboard players get #qko pnp.tmp
$data modify storage pnp:board qk.qk set value "$(k)"
function pnp:quest/on_event with storage pnp:board qk
