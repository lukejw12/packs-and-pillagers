execute store result score #nbc pnp.tmp run function pnp:api/machine/count
execute if score #nbc pnp.tmp matches 0 run scoreboard players set @s pnp.ntick 0
execute if score #nbc pnp.tmp matches 0 run return run function pnp:api/machine/progress {p:0}
scoreboard players add @s pnp.ntick 1
scoreboard players operation #npr pnp.tmp = @s pnp.ntick
scoreboard players operation #npr pnp.tmp *= #100 pnp.tmp
scoreboard players set #nps pnp.tmp 20
scoreboard players operation #npr pnp.tmp /= #nps pnp.tmp
execute store result storage pnp:board npg.p int 1 run scoreboard players get #npr pnp.tmp
function pnp:api/machine/progress with storage pnp:board npg
execute if score @s pnp.ntick matches 20.. run function pnp:nethermach/barter_do
