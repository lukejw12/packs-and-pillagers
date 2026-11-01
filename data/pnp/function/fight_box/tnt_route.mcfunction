scoreboard players set #tn pnp.tmp 0
execute as @e[type=item_display,tag=pnp.held,tag=pnp.c.tnt,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run scoreboard players add #tn pnp.tmp 1
scoreboard players set #tall pnp.tmp 0
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run scoreboard players add #tall pnp.tmp 1
execute if score #tn pnp.tmp matches 0 run return fail
execute unless score #tn pnp.tmp = #tall pnp.tmp run return fail
scoreboard players operation #uid pnp.tmp = @s pnp.hover
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held,distance=..64] if score @s pnp.uid = #uid pnp.tmp run tag @s add pnp.tntt
execute unless entity @e[type=item_display,tag=pnp.tntt,tag=pnp.k.enemy] unless entity @e[type=item_display,tag=pnp.tntt,tag=pnp.infight] run tag @e[type=item_display,tag=pnp.tntt] remove pnp.tntt
execute unless entity @e[type=item_display,tag=pnp.tntt] run return fail
scoreboard players set #c5 pnp.tmp 5
scoreboard players operation #tatk pnp.tmp = #tn pnp.tmp
scoreboard players operation #tatk pnp.tmp *= #c5 pnp.tmp
execute as @e[type=item_display,tag=pnp.held,tag=pnp.c.tnt,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:card/remove
execute as @e[type=item_display,tag=pnp.tntt,limit=1] at @s run function pnp:fight_box/tnt_boom
tag @e[type=item_display,tag=pnp.tntt] remove pnp.tntt
return 1
