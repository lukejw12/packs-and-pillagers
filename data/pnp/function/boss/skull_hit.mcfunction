scoreboard players remove @s pnp.hp 2
particle minecraft:smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.02 12
function pnp:fight/effects/apply {e:"poison",s:"epoi",t:60}
function pnp:card/label/stats
execute if score @s pnp.hp matches ..0 run function pnp:fight/die
