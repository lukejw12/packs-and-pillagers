scoreboard players operation #ens pnp.tmp = @s pnp.stack
tag @e[type=item_display,tag=pnp.ench_t] remove pnp.ench_t
execute as @e[type=item_display,tag=pnp.card,distance=..4] if score @s pnp.stack = #ens pnp.tmp run function pnp:enchant/mark
execute as @e[type=item_display,tag=pnp.ench_t,limit=1] at @s run function pnp:enchant/up
tag @e[type=item_display,tag=pnp.ench_t] remove pnp.ench_t
