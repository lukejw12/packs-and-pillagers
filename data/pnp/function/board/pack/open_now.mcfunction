$scoreboard players set #pc pnp.tmp $(count)
$data modify storage pnp:board ch.p set value "$(pool)"
function pnp:board/pack/loop
