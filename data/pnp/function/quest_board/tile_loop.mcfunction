execute unless data storage pnp:board qtl[0] run return 0
data modify storage pnp:board qtp.c set from storage pnp:board qtl[0].c
data modify storage pnp:board qtp.n set from storage pnp:board qtl[0].n
execute store result score #qtn pnp.tmp run data get storage pnp:board qtp.n
function pnp:quest_board/tile_prep with storage pnp:board qtp
function pnp:quest_board/tile_at with storage pnp:board qtp
data remove storage pnp:board qtl[0]
execute store result score #qti pnp.tmp run data get storage pnp:board qtp.i
scoreboard players add #qti pnp.tmp 1
execute store result storage pnp:board qtp.i int 1 run scoreboard players get #qti pnp.tmp
execute if score #qti pnp.tmp matches ..3 run function pnp:quest_board/tile_loop
