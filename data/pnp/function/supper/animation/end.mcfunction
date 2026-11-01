execute as @e[type=item_display,tag=pnp.meal] if score @s pnp.mown = #me pnp.tmp at @s run function pnp:supper/animation/arrive_effect
execute as @e[type=item_display,tag=pnp.sfocus] if score @s pnp.vown = #me pnp.tmp run tag @s remove pnp.sfocus
execute store result storage pnp:board sres.x double 0.01 run scoreboard players get @s pnp.scx
execute store result storage pnp:board sres.y double 0.01 run scoreboard players get @s pnp.scy
execute store result storage pnp:board sres.z double 0.01 run scoreboard players get @s pnp.scz
execute store result storage pnp:board sres.yaw float 0.01 run scoreboard players get @s pnp.syaw
execute store result storage pnp:board sres.pitch float 0.01 run scoreboard players get @s pnp.spit
function pnp:supper/camera/back with storage pnp:board sres
function pnp:supper/animation/close
