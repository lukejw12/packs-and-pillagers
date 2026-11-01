scoreboard players operation #go pnp.tmp = @s pnp.cgo
scoreboard players set #gok pnp.tmp 0
execute as @e[type=item_display,tag=pnp.c.copper_golem,tag=!pnp.held] if score @s pnp.uid = #go pnp.tmp run scoreboard players set #gok pnp.tmp 1
execute if score #gok pnp.tmp matches 0 run function pnp:copper_golem/release
