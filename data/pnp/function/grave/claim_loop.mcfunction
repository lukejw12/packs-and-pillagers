execute unless data storage pnp:board gl[0] run return 0
data modify storage pnp:board gle set value {t:"item"}
data modify storage pnp:board gle.item set from storage pnp:board gl[0]
$data modify storage pnp:deliver p$(p) append from storage pnp:board gle
data remove storage pnp:board gl[0]
$function pnp:grave/claim_loop {p:$(p)}
