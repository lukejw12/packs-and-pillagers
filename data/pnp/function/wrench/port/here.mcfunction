scoreboard players operation #x pnp.tmp = #tt pnp.tmp
scoreboard players operation #x pnp.tmp *= #1024 pnp.tmp
scoreboard players add #x pnp.tmp 16
execute store result storage pnp:board tph.cx int 1 run scoreboard players get #x pnp.tmp
function pnp:wrench/port/spawn with storage pnp:board tph
