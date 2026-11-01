execute if score #need pnp.tmp matches ..0 run return 0
$scoreboard players remove #need pnp.tmp $(v)
$scoreboard players add #ate pnp.tmp $(v)
$scoreboard players add #meal pnp.tmp $(m)
tag @s add pnp.meal
scoreboard players add #mo pnp.tmp 1
scoreboard players operation @s pnp.mord = #mo pnp.tmp
scoreboard players operation @s pnp.mown = #me pnp.tmp
$scoreboard players set @s pnp.mval $(v)
