$scoreboard players set #pc pnp.tmp $(count)
$data modify storage pnp:board ch.p set value "$(pool)"
function pnp:progression/pack_guarantee with storage pnp:board ch
function pnp:board/pack/loop
