execute unless score @s pnp.plot matches 2 run return 0
execute unless score @s pnp.bxtra matches 0.. run function pnp:board/size/reset_extra
execute unless score @s pnp.msz matches 18.. run return run function pnp:board/size/set_base_size
scoreboard players operation #rt pnp.tmp = #hmax pnp.tmp
scoreboard players remove #rt pnp.tmp 15
scoreboard players set #r10 pnp.tmp 10
scoreboard players operation #rt pnp.tmp /= #r10 pnp.tmp
scoreboard players operation #rt pnp.tmp += @s pnp.bxtra
scoreboard players set #r2 pnp.tmp 2
scoreboard players operation #rt pnp.tmp *= #r2 pnp.tmp
scoreboard players add #rt pnp.tmp 18
execute if score #rt pnp.tmp matches 31.. run scoreboard players set #rt pnp.tmp 30
execute if score #rt pnp.tmp <= @s pnp.msz run return 0
scoreboard players operation @s pnp.msz = #rt pnp.tmp
function pnp:board/size/grow_main
