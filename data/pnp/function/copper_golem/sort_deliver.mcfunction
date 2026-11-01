scoreboard players operation #hv pnp.tmp = @s pnp.cgh
tag @e[type=item_display,tag=pnp.cg_t] remove pnp.cg_t
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held,tag=!pnp.cg_carry,distance=..40,scores={pnp.idx=0}] if score @s pnp.stack = #hv pnp.tmp run tag @s add pnp.cg_t
execute unless entity @e[type=item_display,tag=pnp.cg_t] run return run function pnp:copper_golem/rehome
execute if entity @e[type=item_display,tag=pnp.cg_t,distance=..0.6] run return run function pnp:copper_golem/merge
execute facing entity @e[type=item_display,tag=pnp.cg_t,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^0.12
execute at @s run function pnp:copper_golem/carry
