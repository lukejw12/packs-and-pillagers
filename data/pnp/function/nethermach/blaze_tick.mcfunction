scoreboard players add @s pnp.ntick 1
scoreboard players operation #npr pnp.tmp = @s pnp.ntick
scoreboard players operation #npr pnp.tmp *= #100 pnp.tmp
scoreboard players set #nps pnp.tmp 60
scoreboard players operation #npr pnp.tmp /= #nps pnp.tmp
execute store result storage pnp:board npg.p int 1 run scoreboard players get #npr pnp.tmp
function pnp:api/machine/progress with storage pnp:board npg
execute if score @s pnp.ntick matches 60.. run function pnp:nethermach/blaze_do
