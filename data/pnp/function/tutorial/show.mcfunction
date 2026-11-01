scoreboard players operation @s pnp.tutp = @s pnp.tut
execute store result storage pnp:board it.n int 1 run scoreboard players get @s pnp.tut
scoreboard players operation #iv pnp.tmp = @s pnp.tut
scoreboard players remove #iv pnp.tmp 1
execute store result storage pnp:board it.v int 1 run scoreboard players get #iv pnp.tmp
function pnp:tutorial/show_step with storage pnp:board it
function pnp:tutorial/unglow
execute if score @s pnp.tut matches 2.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.7 1.2
