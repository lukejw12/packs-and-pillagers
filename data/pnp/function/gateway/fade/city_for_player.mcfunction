$data remove storage pnp:gw p$(p).has.city
$tellraw @a[scores={pnp.here=$(p)}] {translate:"pnp.gateway.the_sculk_gateway_faded_away",fallback:"The Sculk Gateway faded away.",color:"gray"}
