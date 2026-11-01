$execute as @e[type=item_display,tag=pnp.c.barrel,tag=!pnp.held,distance=..24] if data entity @s item.components."minecraft:custom_data"{bt:"$(c)"} if score @s pnp.bcount matches ..127 run tag @s add pnp.cg_bc
execute unless entity @e[type=item_display,tag=pnp.cg_bc] as @e[type=item_display,tag=pnp.c.barrel,tag=!pnp.held,distance=..24] unless score @s pnp.bcount matches 1.. run tag @s add pnp.cg_bc
execute store result score @s pnp.cgb run scoreboard players get @e[type=item_display,tag=pnp.cg_bc,sort=nearest,limit=1] pnp.uid
tag @e[type=item_display,tag=pnp.cg_bc] remove pnp.cg_bc
