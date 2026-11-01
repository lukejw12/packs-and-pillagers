$data modify storage pnp:pvp hu set from storage pnp:pvp a$(p).units[$(i)]
$data modify storage pnp:pvp hu.x set value $(h)
$data modify storage pnp:pvp hu.nhp set value $(hp)
function pnp:pvp/home_spawn with storage pnp:pvp hu
