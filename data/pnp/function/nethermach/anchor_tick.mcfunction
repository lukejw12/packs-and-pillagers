execute store result score #nac pnp.tmp run function pnp:api/machine/count
scoreboard players operation #npr pnp.tmp = #nac pnp.tmp
scoreboard players operation #npr pnp.tmp *= #25 pnp.tmp
execute store result storage pnp:board npg.p int 1 run scoreboard players get #npr pnp.tmp
function pnp:api/machine/progress with storage pnp:board npg
execute if score #nac pnp.tmp matches 0 run return 0
execute store result score #nax pnp.tmp run data get entity @s Pos[0]
scoreboard players add #nax pnp.tmp 64
scoreboard players operation #nax pnp.tmp %= #1024 pnp.tmp
execute if score #nax pnp.tmp matches 764.. run return 0
function pnp:nethermach/anchor_explode
