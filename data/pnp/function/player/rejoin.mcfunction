scoreboard players set @s pnp.left 0
execute if entity @s[tag=pnp.in_board] at @s run function pnp:board/close
