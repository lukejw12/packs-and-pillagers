data remove storage pnp:board qdl2
$data modify storage pnp:board qdl2 set from storage pnp:qb chain[$(m)]
$execute if data storage pnp:board qdl2{dl:"$(c)"} run return 1
return 0
