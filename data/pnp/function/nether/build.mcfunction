$execute if data storage pnp:nether built2.p$(p) run return 0
$function pnp:nether/coords {p:$(p)}
scoreboard players set #nfresh pnp.tmp 1
$execute if data storage pnp:nether built.p$(p) run scoreboard players set #nfresh pnp.tmp 0
function pnp:nether/build_at with storage pnp:board nt
$function pnp:nether/migrate {p:$(p)}
execute if score #nfresh pnp.tmp matches 1 run function pnp:nether/ensure_shops with storage pnp:board nt
$data modify storage pnp:nether built2.p$(p) set value 1b
