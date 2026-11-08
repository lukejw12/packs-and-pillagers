$execute if data entity @s item.components."minecraft:custom_data".eq.$(s) run function pnp:villager/slots/pop {s:"$(s)"}
$data modify entity @s item.components."minecraft:custom_data".eq.$(s) set value "$(c)"
$data remove entity @s item.components."minecraft:custom_data".eq.$(s)e
$execute if data entity @e[type=item_display,tag=pnp.eqw,limit=1] item.components."minecraft:custom_data".en run data modify entity @s item.components."minecraft:custom_data".eq.$(s)e set from entity @e[type=item_display,tag=pnp.eqw,limit=1] item.components."minecraft:custom_data".en
execute as @e[type=item_display,tag=pnp.eqw] run function pnp:card/remove
function pnp:villager/recalculate
playsound minecraft:item.armor.equip_iron master @a[distance=..16] ~ ~ ~ 0.8 1.2
