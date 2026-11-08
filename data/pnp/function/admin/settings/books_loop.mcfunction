execute unless data storage pnp:board adm.rl[0] run return 0
data modify storage pnp:board adm.r set from storage pnp:board adm.rl[0].r
function pnp:admin/settings/books_one with storage pnp:board adm
data remove storage pnp:board adm.rl[0]
function pnp:admin/settings/books_loop
