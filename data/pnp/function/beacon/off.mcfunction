scoreboard players set @s pnp.btier 0
execute as @e[type=item_display,tag=pnp.card,scores={pnp.bhst=1..},distance=..40] run scoreboard players set @s pnp.bhst 0
scoreboard players set #bhp pnp.tmp 0
execute as @e[type=item_display,tag=pnp.k.unit,scores={pnp.bhp=1..},distance=..40] run function pnp:beacon/unit_hp
scoreboard players set #bsl pnp.tmp 0
function pnp:beacon/slots with storage pnp:beacon w
