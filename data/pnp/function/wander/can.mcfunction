execute if entity @s[tag=pnp.infight] run return fail
execute on vehicle run return fail
scoreboard players operation #ws pnp.tmp = @s pnp.stack
scoreboard players set #wn pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,distance=..1.6] if score @s pnp.stack = #ws pnp.tmp run scoreboard players add #wn pnp.tmp 1
execute unless score #wn pnp.tmp matches 1 run return fail
return 1
