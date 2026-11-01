scoreboard players set @s pnp.gift 5
function pnp:board/plot/get_coords
function pnp:board/plot/give_gift_5_at with storage pnp:board tmp
tellraw @s {translate:"pnp.board.plot.new_on_your_card_board_a",fallback:"New on your card board: a Forest and a Humble Pack.",color:"green"}
