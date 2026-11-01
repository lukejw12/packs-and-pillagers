execute if score #hungry pnp.tmp matches ..0 run return 0
scoreboard players remove #hungry pnp.tmp 1
scoreboard players operation #atk pnp.tmp = #starvedmg pnp.tmp
data modify storage pnp:board cause set value "Starved at supper"
particle minecraft:angry_villager ~ ~0.3 ~ 0.2 0.1 0.2 0 3
function pnp:fight/hit
