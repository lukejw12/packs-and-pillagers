scoreboard players operation #su pnp.tmp = @s pnp.uid
scoreboard players set #sent pnp.tmp 0
scoreboard players set #depth pnp.tmp 0
execute store result score #nout pnp.tmp run function pnp:route/output_count
scoreboard players set #tier pnp.tmp 1
scoreboard players set #try pnp.tmp 0
function pnp:route/send_loop
execute if score #sent pnp.tmp matches 1 run return 1
scoreboard players set #tier pnp.tmp 2
scoreboard players set #try pnp.tmp 0
function pnp:route/send_loop
return run scoreboard players get #sent pnp.tmp
