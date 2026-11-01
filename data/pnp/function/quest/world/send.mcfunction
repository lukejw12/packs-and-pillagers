execute store result storage pnp:board qk.o int 1 run scoreboard players get @s pnp.tpid
$data modify storage pnp:board qk.qk set value "$(qk)"
function pnp:quest/on_event with storage pnp:board qk
