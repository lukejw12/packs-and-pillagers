scoreboard players operation #hsid pnp.tmp = @s pnp.holding
execute as @e[type=item_display,tag=pnp.held] if score @s pnp.stack = #hsid pnp.tmp run function pnp:board/drop/release
scoreboard players set @s pnp.holding 0
