$execute unless data storage pnp:cards pools.$(p)_g run return 0
execute if score #pc pnp.tmp matches ..0 run return 0
$data modify storage pnp:board ch.p set value "$(p)_g"
function pnp:progression/pack_pick
$data modify storage pnp:board ch.p set value "$(p)"
scoreboard players remove #pc pnp.tmp 1
