execute store result score #own pnp.tmp run data get entity @s Pos[0]
scoreboard players add #own pnp.tmp 64
scoreboard players operation #own pnp.tmp /= #1024 pnp.tmp
$execute as @a if score @s pnp.pid = #own pnp.tmp run give @s $(give) $(gn)
particle minecraft:poof ~ ~0.3 ~ 0.1 0.1 0.1 0.01 4
playsound minecraft:item.bundle.insert block @a[distance=..24] ~ ~ ~ 0.6 1
