$execute unless data storage pnp:qb chain[$(m)] run return 0
$data modify storage pnp:board qnc set from storage pnp:qb chain[$(m)]
$data modify storage pnp:board qnc.p set value $(p)
function pnp:quest_board/next_line_say with storage pnp:board qnc
