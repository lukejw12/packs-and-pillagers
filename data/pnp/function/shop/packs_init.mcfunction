execute store result score #pp pnp.tmp run data get storage pnp:board tmp.x
scoreboard players add #pp pnp.tmp 64
scoreboard players operation #pp pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board lki.p int 1 run scoreboard players get #pp pnp.tmp
function pnp:shop/packs_init_for_player with storage pnp:board lki
