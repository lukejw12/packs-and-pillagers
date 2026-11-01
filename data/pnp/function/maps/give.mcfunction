$data modify storage pnp:board mg set value {m:"$(m)"}
execute store result storage pnp:board mg.p int 1 run scoreboard players get @a[tag=pnp.dropper,limit=1] pnp.pid
function pnp:maps/give_for_player with storage pnp:board mg
function pnp:card/remove
