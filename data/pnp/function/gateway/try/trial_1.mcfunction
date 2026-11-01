execute as @e[type=item_display,tag=pnp.gwc,limit=1] run scoreboard players operation #gst pnp.tmp = @s pnp.stack
scoreboard players set #pc pnp.tmp 0
execute as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..64] if score @s pnp.stack = #gst pnp.tmp run scoreboard players add #pc pnp.tmp 1
execute if score #pc pnp.tmp matches 0 run return run title @s actionbar {translate:"pnp.gateway.stack_villagers_on_it_first_then",fallback:"Stack villagers on it first, then right-click to send them through.",color:"yellow"}
tag @e[type=item_display,tag=pnp.kk] remove pnp.kk
execute as @e[type=item_display,tag=pnp.c.trial_key,tag=!pnp.held,distance=..64] if score @s pnp.stack = #gst pnp.tmp run tag @s add pnp.kk
execute unless entity @e[type=item_display,tag=pnp.kk] run return run title @s actionbar {translate:"pnp.gateway.put_a_trial_key_on_the",fallback:"Put a Trial Key on the portal stack to open it.",color:"yellow"}
execute as @e[type=item_display,tag=pnp.kk,limit=1] run function pnp:card/remove
tag @e[type=item_display,tag=pnp.kk] remove pnp.kk
function pnp:gateway/begin {s:"trial",st:1,name:"Trial Chambers"}
