execute store result storage pnp:board bb.p int 1 run scoreboard players get #gp pnp.tmp
data modify storage pnp:board bb.c set from entity @s item.components."minecraft:custom_data".card
function pnp:gateway/boss/bar_for_card with storage pnp:board bb
playsound minecraft:entity.wither.spawn hostile @a[distance=..32] ~ ~ ~ 0.4 1.4
