execute store result score #own pnp.tmp run data get entity @s Pos[0]
scoreboard players add #own pnp.tmp 64
scoreboard players operation #own pnp.tmp /= #1024 pnp.tmp
execute as @a if score @s pnp.pid = #own pnp.tmp run title @s actionbar {text:"The Wandering Trader moved on.",color:"gray"}
particle minecraft:poof ~ ~0.2 ~ 0.25 0.1 0.25 0.02 12
playsound minecraft:entity.wandering_trader.disappeared master @a[distance=..32] ~ ~ ~ 1 1
function pnp:card/remove
