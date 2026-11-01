$execute in pnp:board positioned $(cx) 65 16 positioned ~-76 ~-5 ~-56 store result score #vil pnp.tmp if entity @e[type=item_display,tag=pnp.c.villager,dx=170,dy=15,dz=140]
$execute in pnp:board positioned $(cx) 65 16 positioned ~-76 ~-5 ~-56 store result score #bab pnp.tmp if entity @e[type=item_display,tag=pnp.c.baby_villager,dx=170,dy=15,dz=140]
scoreboard players set #food pnp.tmp 0
$execute in pnp:board positioned $(cx) 65 16 positioned ~-76 ~-5 ~-56 as @e[type=item_display,tag=pnp.k.food,dx=170,dy=15,dz=140] run function pnp:supper/count_card with entity @s item.components."minecraft:custom_data"
$execute in pnp:board positioned $(cx) 65 16 positioned ~-76 ~-5 ~-56 as @e[type=item_display,tag=pnp.c.barrel,scores={pnp.bcount=1..},dx=170,dy=15,dz=140] if data entity @s item.components."minecraft:custom_data".bt run function pnp:supper/count_barrel with entity @s item.components."minecraft:custom_data"
