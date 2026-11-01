execute as @e[type=#pnp:capturable,distance=..1.3,predicate=pnp:adult,sort=nearest,limit=1] at @s run return run function pnp:world/capture_mob
scoreboard players add #cap pnp.tmp 1
execute if score #cap pnp.tmp matches ..16 positioned ^ ^ ^0.25 run function pnp:world/capture_raycast
