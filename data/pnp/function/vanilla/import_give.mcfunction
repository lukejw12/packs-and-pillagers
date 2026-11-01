execute if score #ic pnp.tmp matches ..0 run return 0
scoreboard players remove #ic pnp.tmp 1
$data modify storage pnp:board tmp.card set value "$(c)"
function pnp:world/deliver_at with storage pnp:board tmp
$function pnp:vanilla/import_give {c:"$(c)"}
