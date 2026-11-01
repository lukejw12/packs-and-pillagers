execute if data entity @s item.components."minecraft:custom_data".weapon run function pnp:fight/unequip
data modify storage pnp:board eq.w set from entity @e[type=item_display,tag=pnp.eqw,limit=1] item.components."minecraft:custom_data".card
data modify entity @s item.components."minecraft:custom_data".weapon set from storage pnp:board eq.w
function pnp:fight/apply_equipment with storage pnp:board eq
execute as @e[type=item_display,tag=pnp.eqw] run function pnp:card/remove
playsound minecraft:item.armor.equip_iron master @a[distance=..16] ~ ~ ~ 0.8 1.2
function pnp:card/label/stats
