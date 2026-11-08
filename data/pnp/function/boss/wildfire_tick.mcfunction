scoreboard players add @s pnp.bsp 1
scoreboard players operation #bfid pnp.tmp = @s pnp.fid
execute if score @s pnp.hp matches ..40 unless entity @s[tag=pnp.bph2] run function pnp:boss/wildfire_phase2
execute if score @s pnp.bsp matches 8.. run function pnp:boss/wildfire_nova
