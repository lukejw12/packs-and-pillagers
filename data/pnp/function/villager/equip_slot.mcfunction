$execute if data entity @s item.components."minecraft:custom_data".eq.$(s) run function pnp:villager/slots/pop {s:"$(s)"}
$data modify entity @s item.components."minecraft:custom_data".eq.$(s) set value "$(c)"
execute as @e[type=item_display,tag=pnp.eqw] run function pnp:card/remove
function pnp:villager/recalculate
playsound minecraft:item.armor.equip_iron master @a[distance=..16] ~ ~ ~ 0.8 1.2
