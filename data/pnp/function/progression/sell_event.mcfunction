scoreboard players operation #sev pnp.tmp = #earn pnp.tmp
scoreboard players operation #sev pnp.tmp /= #4 pnp.tmp
execute if score #sev pnp.tmp matches 101.. run scoreboard players set #sev pnp.tmp 100
function pnp:progression/sell_loop
