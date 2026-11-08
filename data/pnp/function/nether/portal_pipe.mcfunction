execute unless function pnp:api/machine/take run return 0
execute store result score #ppx pnp.tmp run data get entity @s Pos[0]
scoreboard players operation #ppp pnp.tmp = #ppx pnp.tmp
scoreboard players add #ppp pnp.tmp 64
scoreboard players operation #ppp pnp.tmp /= #1024 pnp.tmp
scoreboard players add #ppx pnp.tmp 64
scoreboard players operation #ppx pnp.tmp %= #1024 pnp.tmp
scoreboard players operation #ppc pnp.tmp = #ppp pnp.tmp
scoreboard players operation #ppc pnp.tmp *= #1024 pnp.tmp
execute if score #ppx pnp.tmp matches 764.. run scoreboard players add #ppc pnp.tmp 16
execute unless score #ppx pnp.tmp matches 764.. run scoreboard players add #ppc pnp.tmp 784
execute store result storage pnp:board ppd.cx int 1 run scoreboard players get #ppc pnp.tmp
scoreboard players set #ppok pnp.tmp 0
function pnp:nether/portal_pipe_to with storage pnp:board ppd
execute if score #ppok pnp.tmp matches 0 run function pnp:nether/portal_pipe_back
