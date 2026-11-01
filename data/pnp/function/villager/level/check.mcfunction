scoreboard players set #nl pnp.tmp 1
execute if score @s pnp.vxp matches 10.. run scoreboard players set #nl pnp.tmp 2
execute if score @s pnp.vxp matches 30.. run scoreboard players set #nl pnp.tmp 3
execute if score @s pnp.vxp matches 70.. run scoreboard players set #nl pnp.tmp 4
execute if score @s pnp.vxp matches 150.. run scoreboard players set #nl pnp.tmp 5
execute if score #nl pnp.tmp > @s pnp.vlvl run function pnp:villager/level/up
