scoreboard players add #ntry pnp.tmp 1
execute if score #ntry pnp.tmp matches 13.. run return 0
execute store result score #nx pnp.tmp run random value 1..30
execute store result score #nz pnp.tmp run random value 1..30
scoreboard players operation #nx pnp.tmp += #nx0 pnp.tmp
execute store result storage pnp:board ns.x int 1 run scoreboard players get #nx pnp.tmp
execute store result storage pnp:board ns.z int 1 run scoreboard players get #nz pnp.tmp
function pnp:night/try_at with storage pnp:board ns
execute if score #nok pnp.tmp matches 0 run function pnp:night/try
