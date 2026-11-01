$data modify storage pnp:pvp a$(p) set value {units:[],surv:[],loot:[]}
scoreboard players operation #gst pnp.tmp = @s pnp.pvs
scoreboard players set #pi pnp.tmp 0
$execute as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..64] if score @s pnp.stack = #gst pnp.tmp unless entity @s[tag=!pnp.c.villager,tag=!pnp.c.wolf,tag=!pnp.c.iron_golem] at @s run function pnp:pvp/take {p:$(p)}
