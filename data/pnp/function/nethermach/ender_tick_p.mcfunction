$execute store result score #enc pnp.tmp run data get storage pnp:ender p$(p).l
scoreboard players operation #npr pnp.tmp = #enc pnp.tmp
scoreboard players operation #npr pnp.tmp *= #100 pnp.tmp
scoreboard players set #nps pnp.tmp 27
scoreboard players operation #npr pnp.tmp /= #nps pnp.tmp
execute store result storage pnp:board npg.p int 1 run scoreboard players get #npr pnp.tmp
function pnp:api/machine/progress with storage pnp:board npg
execute unless entity @s[tag=pnp.hasout] run return 0
$execute unless data storage pnp:ender p$(p).l[0] run return 0
$data modify storage pnp:board nem.c set from storage pnp:ender p$(p).l[0]
$data remove storage pnp:ender p$(p).l[0]
function pnp:api/machine/emit with storage pnp:board nem
