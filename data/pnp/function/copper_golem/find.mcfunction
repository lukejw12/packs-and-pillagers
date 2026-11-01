scoreboard players set #sfu pnp.tmp 0
tag @e[type=item_display,tag=pnp.cg_sf] remove pnp.cg_sf
$execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held,tag=!pnp.infight,tag=!pnp.cg_carry,distance=..40] if entity @s[tag=pnp.c.$(c)] at @s run function pnp:copper_golem/find_one
execute store result score #sfu pnp.tmp run scoreboard players get @e[type=item_display,tag=pnp.cg_sf,sort=nearest,limit=1] pnp.uid
tag @e[type=item_display,tag=pnp.cg_sf] remove pnp.cg_sf
