execute store result score #own pnp.tmp run data get entity @s Pos[0]
scoreboard players add #own pnp.tmp 64
scoreboard players operation #own pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board gf.p int 1 run scoreboard players get #own pnp.tmp
function pnp:gateway/fade/city_for_player with storage pnp:board gf
particle minecraft:reverse_portal ~ ~0.3 ~ 0.3 0.2 0.3 0.05 40
playsound minecraft:block.portal.travel master @a[distance=..24] ~ ~ ~ 0.2 2
function pnp:card/remove
