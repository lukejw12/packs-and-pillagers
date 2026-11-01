execute as @e[type=item_display,tag=pnp.c.copper_golem] if score @s pnp.uid = #gu pnp.tmp run scoreboard players operation #gi pnp.tmp = @s pnp.cgn
execute if score #gi pnp.tmp matches 8.. run return 0
scoreboard players add #gi pnp.tmp 1
execute as @e[type=item_display,tag=pnp.c.copper_golem] if score @s pnp.uid = #gu pnp.tmp run scoreboard players operation @s pnp.cgn = #gi pnp.tmp
tag @s add pnp.held
tag @s add pnp.cg_carry
scoreboard players operation @s pnp.cgo = #gu pnp.tmp
scoreboard players operation @s pnp.cgi = #gi pnp.tmp
scoreboard players operation @s pnp.stack = #gu pnp.tmp
scoreboard players add @s pnp.stack 900000000
data merge entity @s {teleport_duration:2}
playsound minecraft:block.copper.step master @a[distance=..24] ~ ~ ~ 0.5 1.5
