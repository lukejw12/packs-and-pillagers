execute if score #need pnp.tmp matches ..0 run return 0
execute unless score @s pnp.bcount matches 1.. run return 0
scoreboard players remove @s pnp.bcount 1
$scoreboard players remove #need pnp.tmp $(v)
$scoreboard players add #bpts pnp.tmp $(v)
$scoreboard players add #ate pnp.tmp $(v)
$scoreboard players add #meal pnp.tmp $(m)
$function pnp:supper/eat_barrel_loop {v:$(v),m:$(m)}
