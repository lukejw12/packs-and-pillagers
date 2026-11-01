$execute if data storage pnp:ideas p$(p).init run return 0
$data modify storage pnp:ideas p$(p) merge value {init:1b,r1:1b,r2:1b,r3:1b,r4:1b,r5:1b,r6:1b,r23:1b,r44:1b}
$data modify storage pnp:board mg.p set value $(p)
function pnp:board/plot/get_coords
function pnp:idea/migrate_scan with storage pnp:board tmp
