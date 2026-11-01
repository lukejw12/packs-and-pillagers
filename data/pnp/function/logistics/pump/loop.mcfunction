execute if score #dn pnp.tmp matches ..0 run return 0
execute if score #pi pnp.tmp >= #pl pnp.tmp run return 0
execute store result storage pnp:board pq.i int 1 run scoreboard players get #pi pnp.tmp
function pnp:logistics/pump/try with storage pnp:board pq
function pnp:logistics/pump/loop
