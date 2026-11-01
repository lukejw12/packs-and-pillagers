tag @e[type=item_display,tag=pnp.gwc] remove pnp.gwc
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp run tag @s add pnp.gwc
execute if score @s pnp.gws matches 1.. run return run title @s actionbar {text:"Your party is already through a gateway.",color:"red"}
execute if score @s pnp.gwj matches 1.. run return run title @s actionbar {text:"You're already in a gateway.",color:"red"}
execute if entity @e[type=item_display,tag=pnp.gwc,tag=pnp.gw_used] run return run function pnp:gateway/join_late
execute if entity @e[type=item_display,tag=pnp.gwc,tag=pnp.c.player_portal] run return run function pnp:pvp/portal/try
execute if entity @e[type=item_display,tag=pnp.gwc,tag=pnp.c.redstone_caves] run return run function pnp:redstone_caves/try_start {s:"caves",name:"Redstone Caves"}
execute if entity @e[type=item_display,tag=pnp.gwc,tag=pnp.c.awakened_core] run return run function pnp:redstone_caves/wake/card
execute if entity @e[type=item_display,tag=pnp.gwc,tag=pnp.c.gate_trial] run return run function pnp:gateway/try/trial_0
execute if entity @e[type=item_display,tag=pnp.gwc,tag=pnp.c.portal_trial] run return run function pnp:gateway/try/trial_1
execute if entity @e[type=item_display,tag=pnp.gwc,tag=pnp.c.gate_city] run return run function pnp:gateway/try/city_0
execute if entity @e[type=item_display,tag=pnp.gwc,tag=pnp.c.portal_city] run return run function pnp:gateway/try/city_1
execute if entity @e[type=item_display,tag=pnp.gwc,tag=pnp.c.gate_monument] run return run function pnp:gateway/try/monument_0
execute if entity @e[type=item_display,tag=pnp.gwc,tag=pnp.c.portal_monument] run return run function pnp:gateway/try/monument_1
execute if entity @e[type=item_display,tag=pnp.gwc,tag=pnp.c.gate_mansion] run return run function pnp:gateway/try/mansion_0
execute if entity @e[type=item_display,tag=pnp.gwc,tag=pnp.c.portal_mansion] run return run function pnp:gateway/try/mansion_1
