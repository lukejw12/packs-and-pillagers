execute if entity @s[tag=pnp.fusing] run return run function pnp:night/fuse_tick
execute if entity @s[tag=pnp.slow] unless score #g5 pnp.tmp matches 0 run return 0
execute unless entity @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..48] run return 0
execute facing entity @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..48,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.03 run tp @s ~ ~ ~
execute at @s if entity @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..1.3] run function pnp:night/fuse_start
