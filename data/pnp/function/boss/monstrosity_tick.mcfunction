scoreboard players add @s pnp.bsp 1
scoreboard players operation #bfid pnp.tmp = @s pnp.fid
execute if score @s pnp.hp matches ..100 unless entity @s[tag=pnp.bph2] run function pnp:boss/monstrosity_phase2
execute if score @s pnp.bsp matches 10.. run function pnp:boss/monstrosity_shock
