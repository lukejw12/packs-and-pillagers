execute store result score #px pnp.tmp run data get entity @s Pos[0]
scoreboard players operation #pp pnp.tmp = #px pnp.tmp
scoreboard players operation #pp pnp.tmp /= #1024 pnp.tmp
scoreboard players operation #pb pnp.tmp = #pp pnp.tmp
scoreboard players operation #pb pnp.tmp *= #1024 pnp.tmp
scoreboard players operation #px pnp.tmp -= #pb pnp.tmp
execute store result storage pnp:board ng.p int 1 run scoreboard players get #pp pnp.tmp
function pnp:nether/build with storage pnp:board ng
execute if score #px pnp.tmp matches ..399 run function pnp:nether/coords with storage pnp:board ng
execute if score #px pnp.tmp matches ..399 run data modify storage pnp:board pd.cx set from storage pnp:board nt.cx
execute if score #px pnp.tmp matches 400.. run function pnp:nether/ocoords with storage pnp:board ng
execute if score #px pnp.tmp matches 400.. run data modify storage pnp:board pd.cx set from storage pnp:board ot.cx
scoreboard players operation #ps pnp.tmp = @s pnp.stack
scoreboard players add #stack pnp.ids 1
scoreboard players operation #ns pnp.tmp = #stack pnp.ids
execute as @e[type=item_display,tag=pnp.card,distance=..8,scores={pnp.idx=1..}] if score @s pnp.stack = #ps pnp.tmp run function pnp:nether/send_mark
particle minecraft:portal ~ ~0.3 ~ 0.3 0.2 0.3 0.5 40
playsound minecraft:block.portal.trigger block @a[distance=..24] ~ ~ ~ 0.3 1.6
function pnp:nether/send_to with storage pnp:board pd
