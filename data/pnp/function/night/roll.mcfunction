execute if score @s pnp.gws matches 1.. run return 0
function pnp:raid/table_age
scoreboard players operation #nc pnp.tmp = #age pnp.tmp
scoreboard players operation #nc pnp.tmp *= #3 pnp.tmp
scoreboard players add #nc pnp.tmp 10
execute if score #nc pnp.tmp matches 31.. run scoreboard players set #nc pnp.tmp 30
execute store result score #nr pnp.tmp run random value 1..1000
execute if score #nr pnp.tmp <= #nc pnp.tmp run function pnp:night/spawn
