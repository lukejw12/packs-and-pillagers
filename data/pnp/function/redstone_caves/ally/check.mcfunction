execute unless entity @s[tag=pnp.infight] run return run function pnp:redstone_caves/ally/poof
scoreboard players remove @s pnp.slife 20
execute if score @s pnp.slife matches ..0 run function pnp:redstone_caves/ally/poof
