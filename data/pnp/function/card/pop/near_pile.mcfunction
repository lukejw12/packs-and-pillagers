$tag @e[type=item_display,tag=pnp.c.$(card),tag=!pnp.held,tag=!pnp.popping,distance=..2.5,scores={pnp.idx=0}] add pnp.pc
scoreboard players set #tsid pnp.tmp 0
$execute as @e[type=item_display,tag=pnp.pc,sort=nearest] run function pnp:card/check_pile {card:"$(card)"}
tag @e[type=item_display,tag=pnp.pc] remove pnp.pc
execute if score #tsid pnp.tmp matches 0 run return fail
scoreboard players operation @s pnp.stack = #tsid pnp.tmp
scoreboard players operation @s pnp.idx = #tsize pnp.tmp
execute as @e[type=item_display,tag=pnp.card,distance=..12] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx matches 0 at @s run function pnp:board/stack/settle
return 1
