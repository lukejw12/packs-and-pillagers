execute store result score #nco pnp.tmp run function pnp:api/machine/count
scoreboard players operation #npr pnp.tmp = #nco pnp.tmp
scoreboard players operation #npr pnp.tmp *= #25 pnp.tmp
execute if score #npr pnp.tmp matches 101.. run scoreboard players set #npr pnp.tmp 100
execute store result storage pnp:board npg.p int 1 run scoreboard players get #npr pnp.tmp
function pnp:api/machine/progress with storage pnp:board npg
execute if score #nco pnp.tmp matches 4.. run function pnp:nethermach/compost_do
