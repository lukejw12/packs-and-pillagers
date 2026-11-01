execute store result storage pnp:board qbe.o int 1 run scoreboard players get @s pnp.pid
$data modify storage pnp:board qbe.qk set value "$(qk)"
function pnp:quest_board/event_for_player with storage pnp:board qbe
