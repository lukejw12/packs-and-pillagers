scoreboard players operation #hs pnp.tmp = #hsid pnp.tmp
execute unless function pnp:villager/held_slot run return fail
scoreboard players set #route pnp.tmp 1
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hs pnp.tmp run tag @s add pnp.eqw
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s run function pnp:villager/equip
tag @e[type=item_display,tag=pnp.eqw] remove pnp.eqw
scoreboard players set @s pnp.svil -1
return 1
