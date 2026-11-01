execute unless data storage pnp:board pge[0] run return 0
data modify storage pnp:board pgx set from storage pnp:board pge[0]
data modify storage pnp:board pgx.p set from storage pnp:board pgp.p
execute if data storage pnp:board pgx.r run function pnp:book/entry_recipe with storage pnp:board pgx
execute if data storage pnp:board pgx.c run function pnp:book/entry_card with storage pnp:board pgx
execute if data storage pnp:board pgx.cnt run function pnp:book/entry_count
execute unless data storage pnp:board pgx.r unless data storage pnp:board pgx.c unless data storage pnp:board pgx.cnt run data modify storage pnp:board pgo append from storage pnp:board pgx.k
data remove storage pnp:board pge[0]
function pnp:book/page_loop
