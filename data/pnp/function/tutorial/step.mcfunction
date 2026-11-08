execute store result storage pnp:board it.p int 1 run scoreboard players get @s pnp.pid
execute store result storage pnp:board it.t int 1 run scoreboard players get @s pnp.here
function pnp:tutorial/check with storage pnp:board it
execute if score @s pnp.tut matches 10.. run return run function pnp:tutorial/done with storage pnp:board it
execute unless score @s pnp.tut = @s pnp.tutp run function pnp:tutorial/show
execute if score @s pnp.book matches 0.. run return run function pnp:tutorial/unglow
function pnp:tutorial/glow
