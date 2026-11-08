data modify storage pnp:board brn set from storage pnp:board brl[0].n
function pnp:nethermach/brew_use
data modify storage pnp:board bro set from storage pnp:board brl[0].o
function pnp:nethermach/brew_out
particle minecraft:effect ~ ~0.4 ~ 0.2 0.2 0.2 0 12
playsound minecraft:block.brewing_stand.brew master @a[distance=..24] ~ ~ ~ 0.6 1
