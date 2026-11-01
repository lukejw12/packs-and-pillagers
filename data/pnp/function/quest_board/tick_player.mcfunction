execute unless score @s pnp.tpid matches 1.. run return 0
execute store result storage pnp:board qbt.p int 1 run scoreboard players get @s pnp.tpid
scoreboard players operation #qx pnp.tmp = @s pnp.tpid
scoreboard players operation #qx pnp.tmp *= #1024 pnp.tmp
scoreboard players add #qx pnp.tmp 38
execute store result storage pnp:board qbt.x int 1 run scoreboard players get #qx pnp.tmp
function pnp:quest_board/ensure with storage pnp:board qbt
