$execute if data storage pnp:nether biome.p$(p).$(b) run return 0
$data modify storage pnp:nether biome.p$(p).$(b) set value 1b
$function pnp:nether/build {p:$(p)}
$function pnp:nether/coords {p:$(p)}
data modify storage pnp:board nd set from storage pnp:board nt
$data modify storage pnp:board nd.b set value "$(b)"
function pnp:nether/deliver_at with storage pnp:board nd
title @s times 10 60 20
title @s subtitle {translate:"pnp.nether.on_nether_table",fallback:"is on your Nether table",color:"gray"}
$title @s title {translate:"pnp.card.$(b).name",color:"light_purple"}
playsound minecraft:block.portal.ambient master @s ~ ~ ~ 0.3 1.4
