$data modify storage pnp:board mp.id set value "$(card)"
function pnp:machine/ports/counts with storage pnp:board mp
scoreboard players operation #mpn pnp.tmp = #pn pnp.tmp
scoreboard players set #ox pnp.tmp -560
scoreboard players operation #mcount pnp.tmp = #min pnp.tmp
execute if score #mpn pnp.tmp matches 11.. run scoreboard players set #ox pnp.tmp 560
execute if score #mpn pnp.tmp matches 11.. run scoreboard players operation #mcount pnp.tmp = #mout pnp.tmp
execute if score #mpn pnp.tmp matches 11.. run scoreboard players remove #pn pnp.tmp 10
function pnp:machine/ports/z
scoreboard players operation #pn pnp.tmp = #mpn pnp.tmp
