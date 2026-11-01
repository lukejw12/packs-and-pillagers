scoreboard players operation #tt pnp.tmp = @s pnp.here
scoreboard players operation #tme pnp.tmp = @s pnp.pid
execute as @a[tag=pnp.in_board] if score @s pnp.here = #tt pnp.tmp unless score @s pnp.tool matches 1 at @s run function pnp:wrench/on_self
execute at @s run function pnp:wrench/port/heal
scoreboard players operation #me pnp.tmp = #tme pnp.tmp
execute at @s as @e[type=block_display,tag=pnp.link,distance=..64] run data merge entity @s {Glowing:1b}
