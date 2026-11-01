tag @a remove pnp.ptgt
$execute as @a[tag=pnp.in_board,scores={pnp.plot=2}] if score @s pnp.pid matches $(t) run tag @s add pnp.ptgt
$execute unless entity @a[tag=pnp.ptgt] run return run function pnp:pvp/abort {p:$(p)}
scoreboard players set @s pnp.pvst 2
scoreboard players set @s pnp.pvpm 90
$data modify storage pnp:pvp sp set value {x:$(x)}
scoreboard players operation #pa pnp.tmp = @s pnp.pid
$scoreboard players set #pv pnp.tmp $(t)
scoreboard players set #hasp pnp.tmp 0
execute in pnp:board as @e[type=item_display,tag=pnp.c.player_portal] if score @s pnp.pown = #pv pnp.tmp if score @s pnp.ptp = #pa pnp.tmp run function pnp:pvp/portal/get_position
$data modify storage pnp:pvp sp.list set from storage pnp:pvp a$(p).units
scoreboard players set #pi pnp.tmp 0
function pnp:pvp/spawn_loop
title @a[tag=pnp.ptgt] actionbar [{text:"",extra:[{translate:"pnp.pvp.fighters_from",fallback:"Fighters from"}," "],color:"red"},{selector:"@s"},{translate:"pnp.pvp.s_table_came_through_the_portal",fallback:"'s table came through the portal!",color:"red"}]
tellraw @s [{text:"",extra:[{translate:"pnp.pvp.your_fighters_reached",fallback:"Your fighters reached"}," "],color:"red"},{selector:"@a[tag=pnp.ptgt,limit=1]"},{translate:"pnp.pvp.s_table_and_are_attacking",fallback:"'s table and are attacking!",color:"red"}]
