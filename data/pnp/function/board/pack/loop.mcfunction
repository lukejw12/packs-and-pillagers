execute if score #pc pnp.tmp matches ..0 run return 0
function pnp:card/pool/pick with storage pnp:board ch
scoreboard players remove #pc pnp.tmp 1
function pnp:board/pack/loop
