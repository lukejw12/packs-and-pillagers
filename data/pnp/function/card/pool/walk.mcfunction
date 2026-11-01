execute unless data storage pnp:board pk.e[0] run return 0
execute store result score #pw pnp.tmp run data get storage pnp:board pk.e[0].w
scoreboard players operation #pr pnp.tmp -= #pw pnp.tmp
execute if score #pr pnp.tmp matches ..0 run return run function pnp:card/pool/hit_check
data remove storage pnp:board pk.e[0]
function pnp:card/pool/walk
