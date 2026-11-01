scoreboard players set #fid pnp.tmp 0
execute as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..6] if score @s pnp.uid = #u pnp.tmp if entity @s[tag=pnp.infight] run scoreboard players operation #fid pnp.tmp = @s pnp.fid
execute if score #fid pnp.tmp matches 1.. run return run function pnp:fight_box/add
tag @e[type=item_display,tag=pnp.jthem] remove pnp.jthem
execute as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..6] if score @s pnp.uid = #u pnp.tmp run tag @s add pnp.jthem
execute unless entity @e[type=item_display,tag=pnp.jthem] run return 0
execute at @e[type=item_display,tag=pnp.jthem,limit=1] as @e[type=marker,tag=pnp.fight,distance=..3.5,sort=nearest,limit=1] run scoreboard players operation #fid pnp.tmp = @s pnp.fid
execute if score #fid pnp.tmp matches 1.. run return run function pnp:fight_box/merge_join
tag @s add pnp.jme
execute at @e[type=item_display,tag=pnp.jthem,limit=1] positioned ~ ~ ~-1 run function pnp:fight_box/new
execute as @e[type=item_display,tag=pnp.jthem,limit=1] at @s run function pnp:fight_box/add
execute as @e[type=item_display,tag=pnp.jme,limit=1] at @s run function pnp:fight_box/add
tag @e[type=item_display,tag=pnp.jme] remove pnp.jme
tag @e[type=item_display,tag=pnp.jthem] remove pnp.jthem
