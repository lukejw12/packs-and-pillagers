execute unless score #mode pnp.ids matches 4 run return run title @s actionbar {translate:"pnp.pvp.pvp_is_off_in_this_world",fallback:"PvP is off in this world.",color:"red"}
execute if score @s pnp.patk matches 1.. run return run title @s actionbar {translate:"pnp.pvp.your_fighters_are_already_out",fallback:"Your fighters are already out.",color:"yellow"}
execute as @e[type=item_display,tag=pnp.gwc,limit=1] run scoreboard players operation #gst pnp.tmp = @s pnp.stack
execute as @e[type=item_display,tag=pnp.gwc,limit=1] run scoreboard players operation #tp pnp.tmp = @s pnp.ptp
execute if score #tp pnp.tmp = @s pnp.pid run return run title @s actionbar {translate:"pnp.pvp.that_portal_leads_to_your_own",fallback:"That portal leads to your own table.",color:"yellow"}
scoreboard players set #pc pnp.tmp 0
execute as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..64] if score @s pnp.stack = #gst pnp.tmp unless entity @s[tag=!pnp.c.villager,tag=!pnp.c.wolf,tag=!pnp.c.iron_golem] run scoreboard players add #pc pnp.tmp 1
execute if score #pc pnp.tmp matches 0 run return run title @s actionbar {translate:"pnp.pvp.drop_villagers_wolves_or_golems_on",fallback:"Drop villagers, wolves, or golems on the portal first.",color:"yellow"}
scoreboard players operation @s pnp.pvs = #gst pnp.tmp
tag @a remove pnp.ptgt
execute as @a[tag=pnp.in_board,scores={pnp.plot=2}] if score @s pnp.pid = #tp pnp.tmp run tag @s add pnp.ptgt
execute unless entity @a[tag=pnp.ptgt] run return run title @s actionbar {translate:"pnp.pvp.they_aren_t_at_their_table",fallback:"They aren't at their table right now. Try again when they are.",color:"yellow"}
function pnp:pvp/launch
