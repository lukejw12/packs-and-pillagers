scoreboard players operation #pa pnp.tmp = @s pnp.pid
execute store result storage pnp:pvp tc.p int 1 run scoreboard players get @s pnp.pid
execute store result storage pnp:pvp tc.t int 1 run scoreboard players get @s pnp.patk
scoreboard players operation #tx pnp.tmp = @s pnp.patk
scoreboard players operation #tx pnp.tmp *= #1024 pnp.tmp
scoreboard players add #tx pnp.tmp 16
execute store result storage pnp:pvp tc.x int 1 run scoreboard players get #tx pnp.tmp
scoreboard players operation #hx pnp.tmp = @s pnp.pid
scoreboard players operation #hx pnp.tmp *= #1024 pnp.tmp
scoreboard players add #hx pnp.tmp 16
execute store result storage pnp:pvp tc.h int 1 run scoreboard players get #hx pnp.tmp
scoreboard players remove @s pnp.pvpm 1
execute if score @s pnp.pvst matches 1 if score @s pnp.pvpm matches ..0 run return run function pnp:pvp/arrive with storage pnp:pvp tc
execute if score @s pnp.pvst matches 2 run return run function pnp:pvp/fight with storage pnp:pvp tc
execute if score @s pnp.pvst matches 3 if entity @s[tag=pnp.in_board] run return run function pnp:pvp/home with storage pnp:pvp tc
