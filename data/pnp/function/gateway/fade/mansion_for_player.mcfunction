$data remove storage pnp:gw p$(p).has.mansion
$tellraw @a[scores={pnp.here=$(p)}] {translate:"pnp.gateway.the_mansion_gateway_faded_away",fallback:"The Mansion Gateway faded away.",color:"gray"}
