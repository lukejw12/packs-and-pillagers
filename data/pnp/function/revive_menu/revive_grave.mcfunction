$execute unless data storage pnp:graves p$(p)[$(k)] run return 0
$data modify storage pnp:board rv set from storage pnp:graves p$(p)[$(k)]
scoreboard players operation #tu pnp.tmp = @s pnp.memo
scoreboard players set #rvok pnp.tmp 0
execute as @e[type=item_display,tag=pnp.c.totem,tag=!pnp.held,distance=..64] if score @s pnp.uid = #tu pnp.tmp at @s run function pnp:revive_menu/revive_at
execute if score #rvok pnp.tmp matches 0 run return run function pnp:revive_menu/close
$data remove storage pnp:graves p$(p)[$(k)]
function pnp:revive_menu/close
function pnp:revive_menu/message with storage pnp:board rv
