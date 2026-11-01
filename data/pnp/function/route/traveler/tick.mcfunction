execute if entity @s[tag=pnp.tr_go] run return run function pnp:route/traveler/fly
tag @s add pnp.tr_go
execute store result entity @s teleport_duration int 1 run scoreboard players get @s pnp.ttime
execute store result storage pnp:board tr.x double 0.001 run scoreboard players get @s pnp.tx
execute store result storage pnp:board tr.z double 0.001 run scoreboard players get @s pnp.tz
function pnp:route/traveler/teleport with storage pnp:board tr
