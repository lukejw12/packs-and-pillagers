$data modify storage pnp:board exl set from storage pnp:cards expd.$(pool).o
$data modify storage pnp:board exc set value {p:$(p)}
function pnp:progression/expedition_loop
execute if data storage pnp:board exc.c run return run function pnp:progression/expedition_give with storage pnp:board exc
$data modify storage pnp:board exb.p set from storage pnp:cards expd.$(pool).b
function pnp:card/pool/pick with storage pnp:board exb
return 1
