tag @s add pnp.hungry
scoreboard players set #atk pnp.tmp 2
data modify storage pnp:board cause set value "Went hungry at supper"
particle minecraft:angry_villager ~ ~0.3 ~ 0.2 0.1 0.2 0 3
function pnp:villager/recalculate
function pnp:fight/hit
