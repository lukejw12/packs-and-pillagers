scoreboard players set @s pnp.stf 0
execute unless score @s pnp.fid matches 1.. run return 0
scoreboard players operation #fid pnp.tmp = @s pnp.fid
scoreboard players set #na pnp.tmp 0
execute as @e[type=item_display,tag=pnp.c.redstone_cube_ally,distance=..20] if score @s pnp.fid = #fid pnp.tmp run scoreboard players add #na pnp.tmp 1
execute if score #na pnp.tmp matches 2.. run return 0
execute at @s positioned ~0.9 ~ ~0.7 run function pnp:card/spawn {card:"redstone_cube_ally"}
execute at @s as @e[type=item_display,tag=pnp.c.redstone_cube_ally,tag=!pnp.infight,distance=..3,limit=1,sort=nearest] at @s run function pnp:redstone_caves/ally/join
execute at @s run playsound minecraft:block.respawn_anchor.charge master @a[distance=..24] ~ ~ ~ 0.6 1.6
