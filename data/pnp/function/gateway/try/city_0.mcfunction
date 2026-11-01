execute as @e[type=item_display,tag=pnp.gwc,limit=1] run scoreboard players operation #gst pnp.tmp = @s pnp.stack
scoreboard players set #pc pnp.tmp 0
execute as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..64] if score @s pnp.stack = #gst pnp.tmp run scoreboard players add #pc pnp.tmp 1
execute if score #pc pnp.tmp matches 0 run return run title @s actionbar {text:"Stack villagers on it first, then right-click to send them through.",color:"yellow"}
function pnp:gateway/begin {s:"city",st:0,name:"Deep Dark"}
