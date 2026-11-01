$execute unless data storage pnp:deliver p$(p)[0] run return 0
$data modify storage pnp:board dq set from storage pnp:deliver p$(p)
$data remove storage pnp:deliver p$(p)
function pnp:delivery/loop
tellraw @s {text:"What you sent from your card table is here.",color:"green"}
playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 0.8 1
