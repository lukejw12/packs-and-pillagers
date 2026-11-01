scoreboard players operation #me pnp.tmp = @s pnp.pid
$execute if entity @s[tag=pnp.in_board] as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp at @s positioned ~ 65.01 ~ run return run function pnp:card/spawn {card:"$(card)"}
function pnp:board/plot/get_coords
$data modify storage pnp:board tmp.card set value "$(card)"
function pnp:debug/add_card_at_center with storage pnp:board tmp
