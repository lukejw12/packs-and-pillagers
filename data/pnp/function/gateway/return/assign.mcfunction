execute at @e[type=item_display,tag=pnp.ret_base,limit=1] run tp @s ~ ~ ~
scoreboard players operation @s pnp.stack = #rst pnp.tmp
scoreboard players operation @s pnp.idx = #ridx pnp.tmp
scoreboard players add #ridx pnp.tmp 1
tag @s remove pnp.ret
tag @s remove pnp.arena
tag @s remove pnp.infight
scoreboard players set @s pnp.fid 0
