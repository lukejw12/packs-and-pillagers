$execute as @e[type=item_display,tag=pnp.c.barrel,tag=!pnp.held,distance=..20] if data entity @s item.components."minecraft:custom_data"{bt:"$(c)"} if score @s pnp.bcount matches ..127 run return 1
execute as @e[type=item_display,tag=pnp.c.barrel,tag=!pnp.held,distance=..20] unless score @s pnp.bcount matches 1.. run return 1
return fail
