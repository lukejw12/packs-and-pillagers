scoreboard players operation #tp pnp.tmp = @s pnp.pid
execute if score @s pnp.tpid matches 1.. run scoreboard players operation #tp pnp.tmp = @s pnp.tpid
scoreboard players operation #x pnp.tmp = #tp pnp.tmp
scoreboard players operation #x pnp.tmp *= #1024 pnp.tmp
execute store result storage pnp:board tmp.x int 1 run scoreboard players get #x pnp.tmp
scoreboard players add #x pnp.tmp 31
execute store result storage pnp:board tmp.x2 int 1 run scoreboard players get #x pnp.tmp
scoreboard players remove #x pnp.tmp 15
execute store result storage pnp:board tmp.cx int 1 run scoreboard players get #x pnp.tmp
execute store result storage pnp:board tmp.pid int 1 run scoreboard players get #tp pnp.tmp
