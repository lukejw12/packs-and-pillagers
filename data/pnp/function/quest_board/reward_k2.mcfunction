$data modify storage pnp:board qrc set from storage pnp:qb chain[$(m)]
data modify storage pnp:board qrc.p set from storage pnp:board qbw.p
data modify storage pnp:board qrc.x set from storage pnp:board qbw.x
function pnp:quest_board/reward_run with storage pnp:board qrc
