data remove storage pnp:board qce2
$data modify storage pnp:board qce2 set from storage pnp:qb chain[$(m)]
$execute if data storage pnp:board qce2{ev:"$(e)"} run function pnp:quest_board/add_main_progress with storage pnp:board qba
