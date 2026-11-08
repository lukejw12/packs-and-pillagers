$data modify storage pnp:board popc.card set from entity @s item.components."minecraft:custom_data".eq.$(s)
function pnp:card/pop with storage pnp:board popc
$execute if data entity @s item.components."minecraft:custom_data".eq.$(s)e run function pnp:enchant/pop_apply {s:"$(s)"}
$data remove entity @s item.components."minecraft:custom_data".eq.$(s)e
