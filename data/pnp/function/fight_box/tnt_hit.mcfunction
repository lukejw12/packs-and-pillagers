execute store result score #qko pnp.tmp run data get entity @s Pos[0]
scoreboard players add #qko pnp.tmp 64
scoreboard players operation #qko pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board qk.o int 1 run scoreboard players get #qko pnp.tmp
scoreboard players operation #atk pnp.tmp = #tatk pnp.tmp
data modify storage pnp:board cause set value "Blown up by TNT"
scoreboard players set #killed pnp.tmp 0
function pnp:fight/hit
execute if score #killed pnp.tmp matches 1 run data modify storage pnp:board qk.qk set value "tnt"
execute if score #killed pnp.tmp matches 1 run function pnp:quest/on_event with storage pnp:board qk
