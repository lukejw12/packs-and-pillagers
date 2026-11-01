$execute unless data entity @s item.components."minecraft:custom_data".eq.$(s) run return 0
$function pnp:villager/slots/pop {s:"$(s)"}
$data remove entity @s item.components."minecraft:custom_data".eq.$(s)
function pnp:villager/recalculate
playsound minecraft:item.armor.equip_leather master @a[distance=..16] ~ ~ ~ 0.8 1
