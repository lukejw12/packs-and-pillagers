execute unless score #fid pnp.tmp matches 1.. run return 0
execute if entity @s[tag=pnp.c.creeper] run return 0
execute if entity @s[tag=pnp.infight] if score @s pnp.fid = #fid pnp.tmp run return 0
execute if entity @s[tag=pnp.infight] run function pnp:fight_box/leave
scoreboard players operation #fkeep pnp.tmp = #fid pnp.tmp
function pnp:fight_box/detach
scoreboard players operation #fid pnp.tmp = #fkeep pnp.tmp
tag @s add pnp.infight
scoreboard players operation @s pnp.fid = #fid pnp.tmp
scoreboard players set @s pnp.fside 2
execute if entity @s[tag=pnp.k.unit] run scoreboard players set @s pnp.fside 1
scoreboard players set @s pnp.target 0
execute store result score @s pnp.cd run random value 4..22
execute as @e[type=marker,tag=pnp.fight] if score @s pnp.fid = #fid pnp.tmp run function pnp:fight_box/next_slot
scoreboard players operation @s pnp.fslot = #fs pnp.tmp
