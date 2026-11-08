$execute store result score #qpl pnp.tmp run data get storage pnp:board $(l)
$data modify storage pnp:board qpad set value {l:"$(l)",n:$(n)}
function pnp:quest_board/pad_loop with storage pnp:board qpad
