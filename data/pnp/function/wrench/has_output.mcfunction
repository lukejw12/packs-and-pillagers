tag @s remove pnp.hasout
scoreboard players operation #hu pnp.tmp = @s pnp.uid
scoreboard players set #ho pnp.tmp 0
execute as @e[type=block_display,tag=pnp.link,distance=..48] if score @s pnp.lsrc = #hu pnp.tmp run scoreboard players set #ho pnp.tmp 1
execute if score #ho pnp.tmp matches 1 run tag @s add pnp.hasout
