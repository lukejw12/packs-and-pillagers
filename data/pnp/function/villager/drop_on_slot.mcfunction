scoreboard players operation #hs pnp.tmp = @s pnp.holding
scoreboard players set #hn pnp.tmp 0
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hs pnp.tmp run scoreboard players add #hn pnp.tmp 1
execute unless score #hn pnp.tmp matches 1 run return fail
execute unless function pnp:villager/held_slot run return fail
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hs pnp.tmp run tag @s add pnp.eqw
scoreboard players operation #su pnp.tmp = @s pnp.svil
execute as @e[type=item_display,tag=pnp.slotable,tag=!pnp.k.enemy,distance=..64] if score @s pnp.uid = #su pnp.tmp at @s run function pnp:villager/equip
tag @e[type=item_display,tag=pnp.eqw] remove pnp.eqw
scoreboard players set @s pnp.holding 0
function pnp:board/hover/clear
scoreboard players set @s pnp.hover -1
scoreboard players set @s pnp.svil -1
return 1
