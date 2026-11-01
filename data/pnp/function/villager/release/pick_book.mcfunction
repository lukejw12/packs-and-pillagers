$data modify storage pnp:board rbt.e set from storage pnp:cards ench[$(i)].id
$data modify storage pnp:board rbt.max set from storage pnp:cards ench[$(i)].max
function pnp:villager/release/book_level with storage pnp:board rbt
