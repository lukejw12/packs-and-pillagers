execute if entity @s[tag=pnp.slow] unless score #g5 pnp.tmp matches 0 run return 0
execute unless entity @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..2.6] run return run function pnp:night/fuse_stop
scoreboard players remove @s pnp.fuse 1
scoreboard players operation #fz pnp.tmp = @s pnp.fuse
scoreboard players operation #fz pnp.tmp %= #4 pnp.tmp
execute if score #fz pnp.tmp matches 0 run function pnp:night/pulse_big
execute if score #fz pnp.tmp matches 2 run function pnp:night/pulse_small
execute if score @s pnp.fuse matches ..0 run function pnp:night/explode
