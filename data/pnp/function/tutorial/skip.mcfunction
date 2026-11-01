scoreboard players reset @s pnp.skip
execute unless score @s pnp.tut matches 1..9 run return 0
scoreboard players set @s pnp.tut 99
function pnp:tutorial/unglow
execute store result storage pnp:board it.p int 1 run scoreboard players get @s pnp.pid
function pnp:tutorial/remove_bar with storage pnp:board it
