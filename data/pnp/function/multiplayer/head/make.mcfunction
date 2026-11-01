scoreboard players set #hm pnp.tmp 0
execute as @e[type=marker,tag=pnp.cursor] if score @s pnp.pid = #me pnp.tmp if score #hm pnp.tmp matches 0 at @s run function pnp:multiplayer/head/summon
item modify entity @e[type=item_display,tag=pnp.ph_new,limit=1] contents pnp:fill_head
tag @e[type=item_display,tag=pnp.ph_new] remove pnp.ph_new
