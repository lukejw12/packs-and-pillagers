scoreboard players operation #tu pnp.tmp = @s pnp.cgb
tag @e[type=item_display,tag=pnp.cg_t] remove pnp.cg_t
execute as @e[type=item_display,tag=pnp.c.barrel,tag=!pnp.held,distance=..24] if score @s pnp.uid = #tu pnp.tmp run tag @s add pnp.cg_t
execute unless entity @e[type=item_display,tag=pnp.cg_t] run return run function pnp:copper_golem/choose
execute if entity @e[type=item_display,tag=pnp.cg_t,distance=..0.6] run return run function pnp:copper_golem/unload
execute facing entity @e[type=item_display,tag=pnp.cg_t,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^0.12
execute at @s run function pnp:copper_golem/carry
