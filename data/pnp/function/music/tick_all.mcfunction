scoreboard players add #mclk pnp.tmp 1
execute if score #mclk pnp.tmp matches 20.. run scoreboard players set #mclk pnp.tmp 0
execute if score #mclk pnp.tmp matches 0 in minecraft:overworld store result score #mdt pnp.tmp run time query time
scoreboard players set #c24000 pnp.tmp 24000
scoreboard players operation #mdt pnp.tmp %= #c24000 pnp.tmp
execute if score #mclk pnp.tmp matches 0 run scoreboard players set #mnight pnp.tmp 0
execute if score #mclk pnp.tmp matches 0 if score #mdt pnp.tmp matches 13000..22999 run scoreboard players set #mnight pnp.tmp 1
execute as @a[scores={pnp.mlv=1..}] run function pnp:music/reset
execute as @a[tag=pnp.in_board] at @s run function pnp:music/tick
