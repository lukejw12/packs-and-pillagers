data modify storage pnp:board ms.next set value "Shelves, Vaults, and trophies make it bigger"
execute if score @s pnp.msz matches 30.. run data modify storage pnp:board ms.next set value "The main board is as big as it gets"
function pnp:board/size/show_grow_message with storage pnp:board ms
