$execute store result storage pnp:board rbt.price int 1 run data get storage pnp:trades books.l$(k)
execute store result storage pnp:board rbt.i int 1 run random value 0..15
function pnp:villager/release/pick_book with storage pnp:board rbt
