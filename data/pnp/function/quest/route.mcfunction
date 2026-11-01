tag @e[type=item_display,tag=pnp.qcur] remove pnp.qcur
execute as @e[type=item_display,tag=pnp.k.quest,distance=..64] if score @s pnp.uid = @p[tag=pnp.dropper] pnp.hover run tag @s add pnp.qcur
execute unless entity @e[type=item_display,tag=pnp.qcur] run return fail
execute as @e[type=item_display,tag=pnp.qcur,limit=1] at @s run function pnp:quest/deliver
tag @e[type=item_display,tag=pnp.qcur] remove pnp.qcur
scoreboard players set #route pnp.tmp 2
return 1
