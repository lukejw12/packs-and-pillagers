execute unless data entity @s item.components."minecraft:custom_data".lb run return 0
execute if data entity @s item.components."minecraft:custom_data"{lbm:"out"} run return run function pnp:api/machine/progress {p:0}
scoreboard players add @s pnp.ntick 1
scoreboard players operation #npr pnp.tmp = @s pnp.ntick
scoreboard players operation #npr pnp.tmp *= #25 pnp.tmp
execute store result storage pnp:board npg.p int 1 run scoreboard players get #npr pnp.tmp
function pnp:api/machine/progress with storage pnp:board npg
execute if score @s pnp.ntick matches 4.. run function pnp:linkbarrel/pull_now
