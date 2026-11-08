$execute store result score #qri pnp.tmp run random value 0..$(m)
execute store result storage pnp:board qpk.i int 1 run scoreboard players get #qri pnp.tmp
function pnp:quest_board/pick_offer_i with storage pnp:board qpk
