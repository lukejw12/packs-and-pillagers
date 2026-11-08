execute store result score #gi pnp.tmp if entity @e[type=item_display,tag=pnp.held,tag=pnp.c.gold_ingot,distance=..64]
execute store result score #ha pnp.tmp if entity @e[type=item_display,tag=pnp.held,distance=..64]
execute unless score #gi pnp.tmp = #ha pnp.tmp run return run scoreboard players set #route pnp.tmp 2
scoreboard players set #route pnp.tmp 1
execute if score #gi pnp.tmp matches 3.. run function pnp:nether/recruit
execute as @e[type=item_display,tag=pnp.held,tag=pnp.c.gold_ingot,distance=..64] run function pnp:nether/barter_one
