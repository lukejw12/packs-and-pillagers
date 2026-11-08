execute store result score #nax pnp.tmp run data get entity @s Pos[0]
scoreboard players add #nax pnp.tmp 64
scoreboard players operation #nax pnp.tmp %= #1024 pnp.tmp
execute unless score #nax pnp.tmp matches 764.. run return 0
execute as @e[type=item_display,tag=pnp.c.respawn_anchor,tag=!pnp.held,distance=..48,sort=nearest] at @s if function pnp:nethermach/anchor_try run return 1
