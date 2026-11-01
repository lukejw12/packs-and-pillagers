$data remove storage pnp:gw p$(p).has.trial
$tellraw @a[scores={pnp.here=$(p)}] {translate:"pnp.gateway.the_trial_gateway_faded_away",fallback:"The Trial Gateway faded away.",color:"gray"}
