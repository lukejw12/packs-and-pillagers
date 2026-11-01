scoreboard players remove @s pnp.blind 1
scoreboard players operation #me pnp.tmp = @s pnp.pid
scoreboard players set #has pnp.tmp 0
execute as @e[type=item_display,tag=pnp.fxblind] if score @s pnp.pid = #me pnp.tmp run scoreboard players set #has pnp.tmp 1
execute if score #has pnp.tmp matches 0 anchored eyes positioned ^ ^ ^1.1 run function pnp:gateway/blind/summon
execute anchored eyes positioned ^ ^ ^1.1 as @e[type=item_display,tag=pnp.fxblind] if score @s pnp.pid = #me pnp.tmp run tp @s ~ ~ ~
execute if score @s pnp.blind matches ..0 as @e[type=item_display,tag=pnp.fxblind] if score @s pnp.pid = #me pnp.tmp run kill @s
