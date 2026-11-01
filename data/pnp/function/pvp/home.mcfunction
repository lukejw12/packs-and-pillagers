$data modify storage pnp:pvp hm set value {p:$(p),h:$(h)}
$data modify storage pnp:pvp hm.list set from storage pnp:pvp a$(p).surv
$data modify storage pnp:pvp hm.loot set from storage pnp:pvp a$(p).loot
function pnp:pvp/home_loop
function pnp:pvp/loot_loop
tellraw @s {text:"Your fighters made it home.",color:"gold"}
function pnp:pvp/done
