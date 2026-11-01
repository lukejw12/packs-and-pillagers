execute unless score @s pnp.plot matches 2..3 run return fail
tag @s add pnp.capturer
scoreboard players set #cap pnp.tmp 0
scoreboard players set #caught pnp.tmp 0
execute at @s anchored eyes positioned ^ ^ ^ run function pnp:world/capture_raycast
tag @s remove pnp.capturer
execute if score #caught pnp.tmp matches 1 run return 1
return fail
