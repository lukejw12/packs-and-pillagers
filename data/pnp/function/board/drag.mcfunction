scoreboard players operation #lsid pnp.tmp = @s pnp.holding
execute as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp at @s positioned ~ 65.45 ~ run function pnp:board/stack/layout
