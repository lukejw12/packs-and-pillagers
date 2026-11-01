$data modify storage pnp:board il.list set from storage pnp:cards ideas.$(i).r
$data modify storage pnp:board il.p set value $(p)
scoreboard players set #newr pnp.tmp 0
function pnp:idea/learn_loop
