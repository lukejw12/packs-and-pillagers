$data modify storage pnp:board rel.offers append from storage pnp:trades t."$(prof)".l$(k)[]
$execute if data storage pnp:board rel{prof:"minecraft:librarian"} if data storage pnp:trades books.l$(k) run function pnp:villager/release/book_trade {k:$(k)}
