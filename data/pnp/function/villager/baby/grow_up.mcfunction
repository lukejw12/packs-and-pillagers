function pnp:card/spawn {card:"villager"}
particle minecraft:happy_villager ~ ~0.4 ~ 0.3 0.2 0.3 0 20
playsound minecraft:entity.villager.celebrate master @a[distance=..40] ~ ~ ~ 1 1.3
execute store result score #bo pnp.tmp run data get entity @s Pos[0]
scoreboard players add #bo pnp.tmp 64
scoreboard players operation #bo pnp.tmp /= #1024 pnp.tmp
execute as @a if score @s pnp.pid = #bo pnp.tmp run title @s actionbar {translate:"pnp.villager.a_baby_grew_up_into_a",fallback:"A baby grew up into a villager!",color:"green"}
execute store result storage pnp:board qk.o int 1 run scoreboard players get #bo pnp.tmp
data modify storage pnp:board qk.qk set value "baby"
function pnp:quest/on_event with storage pnp:board qk
function pnp:card/remove
