scoreboard players operation #bt pnp.tmp = @s pnp.btier
scoreboard players set #bh pnp.tmp 0
execute if data entity @s item.components."minecraft:custom_data"{bf:"haste"} run scoreboard players operation #bh pnp.tmp = #bt pnp.tmp
execute as @e[type=item_display,tag=pnp.card,scores={pnp.recipe=1..},distance=..40] run scoreboard players operation @s pnp.bhst = #bh pnp.tmp
scoreboard players set #bhp pnp.tmp 0
execute if data entity @s item.components."minecraft:custom_data"{bf:"tough"} run scoreboard players operation #bhp pnp.tmp = #bt pnp.tmp
scoreboard players operation #bhp pnp.tmp *= #2 pnp.tmp
execute as @e[type=item_display,tag=pnp.k.unit,distance=..40] unless score @s pnp.bhp = #bhp pnp.tmp run function pnp:beacon/unit_hp
scoreboard players set #bsl pnp.tmp 0
execute if data entity @s item.components."minecraft:custom_data"{bf:"slots"} run scoreboard players operation #bsl pnp.tmp = #bt pnp.tmp
scoreboard players operation #bsl pnp.tmp *= #5 pnp.tmp
function pnp:beacon/slots with storage pnp:beacon w
