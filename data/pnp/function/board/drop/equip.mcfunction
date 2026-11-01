scoreboard players set #route pnp.tmp 1
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run tag @s add pnp.eqw
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s run function pnp:fight/equip
tag @e[type=item_display,tag=pnp.eqw] remove pnp.eqw
