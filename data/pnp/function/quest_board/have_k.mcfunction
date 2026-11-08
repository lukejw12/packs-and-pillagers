$data modify storage pnp:board qhc set from storage pnp:qb chain[$(m)]
$data modify storage pnp:board qhc.p set value $(p)
execute if data storage pnp:board qhc.hv run function pnp:quest_board/have_count with storage pnp:board qhc
execute if data storage pnp:board qhc.hf run function pnp:quest_board/have_fn with storage pnp:board qhc
