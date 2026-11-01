$data remove storage pnp:gw p$(p).has.monument
$tellraw @a[scores={pnp.here=$(p)}] {translate:"pnp.gateway.the_ocean_gateway_faded_away",fallback:"The Ocean Gateway faded away.",color:"gray"}
