execute unless data storage pnp:board brl[0] run return 0
data modify storage pnp:board brn set from storage pnp:board brl[0].n
scoreboard players set #bok pnp.tmp 1
function pnp:nethermach/brew_check
execute if score #bok pnp.tmp matches 1 run return run function pnp:nethermach/brew_make
data remove storage pnp:board brl[0]
function pnp:nethermach/brew_loop
