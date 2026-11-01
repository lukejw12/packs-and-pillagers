scoreboard players set #click pnp.tmp 0
execute as @e[type=interaction,tag=pnp.click] if score @s pnp.pid = #me pnp.tmp run function pnp:board/read_click
execute if score #click pnp.tmp matches 1.. run function pnp:board/click
