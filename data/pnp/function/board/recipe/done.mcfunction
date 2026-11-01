scoreboard players set @s pnp.timer 0
scoreboard players operation #csid pnp.tmp = @s pnp.stack
execute store result storage pnp:board done.r int 1 run scoreboard players get @s pnp.recipe
execute if score @s pnp.recipe matches 27..28 run function pnp:redstone_caves/event_here {k:"cave"}
execute if score @s pnp.recipe matches 157 run function pnp:redstone_caves/event_here {k:"rm_core"}
execute as @e[type=item_display,tag=pnp.c.villager,distance=..8] if score @s pnp.stack = #csid pnp.tmp run function pnp:villager/gain_xp {x:1}
function pnp:board/recipe/fetch with storage pnp:board done
