data modify storage pnp:board ch.p set string storage pnp:board ch.o 1
execute store result score #phk pnp.tmp run function pnp:progression/pool_hook
execute if score #phk pnp.tmp matches 1 run return 0
function pnp:card/pool/pick with storage pnp:board ch
