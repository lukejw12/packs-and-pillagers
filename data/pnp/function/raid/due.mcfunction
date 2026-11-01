function pnp:raid/table_age
execute unless score @s pnp.rlvl matches 1.. run scoreboard players set @s pnp.rlvl 1
execute if score @s pnp.lraid >= #day pnp.tmp run return 0
execute unless score #age pnp.tmp matches 1.. run return 0
scoreboard players set #c3 pnp.tmp 3
scoreboard players operation #a3 pnp.tmp = #age pnp.tmp
scoreboard players operation #a3 pnp.tmp %= #c3 pnp.tmp
execute unless score #a3 pnp.tmp matches 1 run return 0
scoreboard players operation @s pnp.lraid = #day pnp.tmp
function pnp:raid/ladder/raid
