function pnp:nether/table_p
$data modify storage pnp:board wfb set value {b:"$(b)"}
data modify storage pnp:board wfb.p set from storage pnp:board ng.p
function pnp:world/found_biome_p with storage pnp:board wfb
