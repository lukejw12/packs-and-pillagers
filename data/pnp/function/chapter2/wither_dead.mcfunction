execute store result score #wdp pnp.tmp run data get entity @s Pos[0]
scoreboard players add #wdp pnp.tmp 64
scoreboard players operation #wdp pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board wdp.p int 1 run scoreboard players get #wdp pnp.tmp
function pnp:chapter2/wither_flag with storage pnp:board wdp
function pnp:chapter2/event_at {qk:"c2_wither"}
