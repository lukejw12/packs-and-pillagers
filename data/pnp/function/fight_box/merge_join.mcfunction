tag @s add pnp.jme
execute as @e[type=item_display,tag=pnp.jthem,limit=1] at @s run function pnp:fight_box/add
execute as @e[type=item_display,tag=pnp.jme,limit=1] at @s run function pnp:fight_box/add
tag @e[type=item_display,tag=pnp.jme] remove pnp.jme
tag @e[type=item_display,tag=pnp.jthem] remove pnp.jthem
