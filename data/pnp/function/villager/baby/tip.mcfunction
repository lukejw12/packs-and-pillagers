scoreboard players set #bm pnp.tmp 300
scoreboard players operation #bm pnp.tmp -= @s pnp.grow
scoreboard players operation #bm pnp.tmp /= #60 pnp.tmp
scoreboard players add #bm pnp.tmp 1
execute store result storage pnp:board bt.m int 1 run scoreboard players get #bm pnp.tmp
function pnp:villager/baby/tip_with_minutes with storage pnp:board bt
