scoreboard players set @s pnp.gift 7
function pnp:board/plot/get_coords
function pnp:board/plot/give_gift_7_at with storage pnp:board tmp
tellraw @s {text:"There's a Sell slot at the end of the shop row now. Drop cards on it to sell them for emeralds.",color:"green"}
