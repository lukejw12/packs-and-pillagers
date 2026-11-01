execute if score @s pnp.invs matches 1 run return run function pnp:inventory/give_kit
execute store result storage pnp:board ivs.p int 1 run scoreboard players get @s pnp.pid
function pnp:inventory/stash_for_player with storage pnp:board ivs
clear @s
scoreboard players set @s pnp.invs 1
function pnp:inventory/give_kit
