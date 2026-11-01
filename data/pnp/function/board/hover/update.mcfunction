scoreboard players set #h pnp.tmp 0
execute unless score @s pnp.book matches 0.. unless score @s pnp.kbo matches 1 unless score @s pnp.memo matches 1.. as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp at @s run function pnp:board/hover/find
execute unless score #h pnp.tmp = @s pnp.hover run function pnp:board/hover/changed
