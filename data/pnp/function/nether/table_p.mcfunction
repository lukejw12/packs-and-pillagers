scoreboard players operation #tp pnp.tmp = @s pnp.pid
execute if score @s pnp.tpid matches 1.. run scoreboard players operation #tp pnp.tmp = @s pnp.tpid
execute store result storage pnp:board ng.p int 1 run scoreboard players get #tp pnp.tmp
