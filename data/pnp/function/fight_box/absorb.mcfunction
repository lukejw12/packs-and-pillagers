scoreboard players operation #fid pnp.tmp = @s pnp.fid
execute store result score #mx pnp.tmp run data get entity @s Pos[0] 32
execute store result score #mz pnp.tmp run data get entity @s Pos[2] 32
scoreboard players operation #mhw pnp.tmp = @s pnp.fhw
scoreboard players add #mhw pnp.tmp 8
execute as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.infight,tag=!pnp.held,distance=..10] at @s run function pnp:fight_box/absorb_one
execute as @e[type=item_display,tag=pnp.k.enemy,tag=!pnp.infight,tag=!pnp.held,tag=!pnp.c.creeper,distance=..10] at @s run function pnp:fight_box/absorb_one
