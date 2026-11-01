execute store result storage pnp:board sl.x int 1 run scoreboard players get #gx1 pnp.tmp
execute store result storage pnp:board sl.z int 1 run scoreboard players get #gz1 pnp.tmp
scoreboard players operation #gdx pnp.tmp = #gx2 pnp.tmp
scoreboard players operation #gdx pnp.tmp -= #gx1 pnp.tmp
scoreboard players operation #gdz pnp.tmp = #gz2 pnp.tmp
scoreboard players operation #gdz pnp.tmp -= #gz1 pnp.tmp
execute store result storage pnp:board sl.x int 0.01 run scoreboard players get #gx1 pnp.tmp
execute store result storage pnp:board sl.z int 0.01 run scoreboard players get #gz1 pnp.tmp
scoreboard players operation #gdx pnp.tmp /= #100 pnp.tmp
scoreboard players add #gdx pnp.tmp 2
scoreboard players operation #gdz pnp.tmp /= #100 pnp.tmp
scoreboard players add #gdz pnp.tmp 2
execute store result storage pnp:board sl.dx int 1 run scoreboard players get #gdx pnp.tmp
execute store result storage pnp:board sl.dz int 1 run scoreboard players get #gdz pnp.tmp
function pnp:selection/grab with storage pnp:board sl
