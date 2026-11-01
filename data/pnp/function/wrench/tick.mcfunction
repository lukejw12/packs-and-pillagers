execute anchored eyes positioned ^ ^ ^1.1 as @e[type=item_display,tag=pnp.fxtrig] if score @s pnp.pid = #me pnp.tmp run tp @s ~ ~ ~
scoreboard players set #ph pnp.tmp 0
execute as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp at @s as @e[type=item_display,tag=pnp.port,distance=..0.32,sort=nearest,limit=1] run scoreboard players operation #ph pnp.tmp = @s pnp.portid
execute if score @s pnp.hover matches ..0 run scoreboard players set @s pnp.mhv 0
execute if score #ph pnp.tmp matches 0 if score @s pnp.hover matches 1.. unless score @s pnp.hover = @s pnp.mhv run function pnp:wrench/machine_info
execute if score #ph pnp.tmp = @s pnp.ph run return 0
scoreboard players operation @s pnp.ph = #ph pnp.tmp
function pnp:wrench/recolor
execute if score #ph pnp.tmp matches 1.. run function pnp:wrench/hover/info
