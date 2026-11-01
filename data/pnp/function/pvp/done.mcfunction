scoreboard players set @s pnp.patk 0
scoreboard players set @s pnp.pvst 0
execute store result storage pnp:pvp dn.p int 1 run scoreboard players get @s pnp.pid
function pnp:pvp/done_for_player with storage pnp:pvp dn
