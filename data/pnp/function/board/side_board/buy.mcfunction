execute store result score #own pnp.tmp run data get entity @s Pos[0]
scoreboard players add #own pnp.tmp 64
scoreboard players operation #own pnp.tmp /= #1024 pnp.tmp
scoreboard players set #sbok pnp.tmp 0
execute as @a if score @s pnp.pid = #own pnp.tmp run scoreboard players set #sbok pnp.tmp 1
execute if score #sbok pnp.tmp matches 0 run tellraw @a[distance=..64] {text:"The table's owner wasn't here, so you got a Side Table card. Right-click it to unlock the side table.",color:"gray"}
execute if score #sbok pnp.tmp matches 0 positioned ~ ~ ~1.25 run return run function pnp:card/pop {card:"side_table"}
execute as @a if score @s pnp.pid = #own pnp.tmp unless score @s pnp.sbsz matches 12.. run function pnp:board/side_board/build
