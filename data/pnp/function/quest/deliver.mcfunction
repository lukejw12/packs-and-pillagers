execute unless data entity @s item.components."minecraft:custom_data"{qk:"deliver"} run return 0
scoreboard players set #qgot pnp.tmp 0
data modify storage pnp:board qd.want set from entity @s item.components."minecraft:custom_data".want
function pnp:quest/deliver_item with storage pnp:board qd
execute if score #qgot pnp.tmp matches 0 run return run title @p[tag=pnp.dropper] actionbar {translate:"pnp.quest.this_order_wants_something_else",fallback:"This order wants something else.",color:"yellow"}
playsound minecraft:entity.villager.yes master @a[distance=..32] ~ ~ ~ 0.7 1.1
function pnp:quest/label
function pnp:quest/check
