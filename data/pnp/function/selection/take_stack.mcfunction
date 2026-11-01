scoreboard players operation #ss pnp.tmp = @s pnp.stack
execute at @s as @e[type=item_display,tag=pnp.card,tag=!pnp.selg,tag=!pnp.k.enemy,tag=!pnp.infight,distance=..8] if score @s pnp.stack = #ss pnp.tmp run function pnp:selection/take_one
