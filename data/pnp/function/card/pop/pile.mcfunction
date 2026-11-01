scoreboard players set #tsid pnp.tmp 0
$execute as @e[type=item_display,tag=pnp.c.$(card),tag=!pnp.popping,tag=!pnp.held,distance=..4,sort=nearest,limit=1] run scoreboard players operation #tsid pnp.tmp = @s pnp.stack
execute if score #tsid pnp.tmp matches 0 run return fail
scoreboard players set #tsize pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held,tag=!pnp.popping,distance=..12] if score @s pnp.stack = #tsid pnp.tmp run scoreboard players add #tsize pnp.tmp 1
scoreboard players operation @s pnp.stack = #tsid pnp.tmp
scoreboard players operation @s pnp.idx = #tsize pnp.tmp
execute as @e[type=item_display,tag=pnp.card,distance=..12] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx matches 0 at @s run function pnp:board/stack/settle
return 1
