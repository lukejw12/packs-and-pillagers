scoreboard players set @s pnp.gift 6
function pnp:board/plot/get_coords
function pnp:board/plot/give_gift_6_at with storage pnp:board tmp
tellraw @s {translate:"pnp.board.plot.there_s_a_shop_on_your",fallback:"There's a shop on your card board now. Drop emeralds on a pack to buy it.",color:"green"}
