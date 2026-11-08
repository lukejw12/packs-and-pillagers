tag @s add pnp.chold
function pnp:card/spawn {card:"ash"}
particle minecraft:large_smoke ~ ~0.2 ~ 0.15 0.05 0.2 0.01 10
execute as @e[type=item_display,tag=pnp.chold,distance=..0.3,limit=1] run function pnp:card/remove
