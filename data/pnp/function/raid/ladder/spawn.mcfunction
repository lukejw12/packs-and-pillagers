execute if score #ln pnp.tmp matches ..0 run return 0
execute store result storage pnp:board tmp.rx int 1 run random value 3..28
$data modify storage pnp:board tmp.enemy set value "$(enemy)"
function pnp:raid/spawn with storage pnp:board tmp
scoreboard players remove #ln pnp.tmp 1
$function pnp:raid/ladder/spawn {enemy:"$(enemy)"}
