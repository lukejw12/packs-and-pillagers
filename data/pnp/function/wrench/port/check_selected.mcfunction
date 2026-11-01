scoreboard players set #hassel pnp.tmp 0
execute as @e[type=item_display,tag=pnp.port,tag=pnp.psel,distance=..48] run scoreboard players operation #hassel pnp.tmp = @s pnp.portid
execute if score #hassel pnp.tmp matches 0 run return run function pnp:wrench/select
execute if score #hassel pnp.tmp = @s pnp.ph run return run function pnp:wrench/unselect
function pnp:wrench/connect
function pnp:wrench/unselect
