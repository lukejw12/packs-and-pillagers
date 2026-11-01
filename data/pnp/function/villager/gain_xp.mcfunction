$scoreboard players add @s pnp.vxp $(x)
execute unless score @s pnp.vlvl matches 1.. run scoreboard players set @s pnp.vlvl 1
function pnp:villager/level/check
