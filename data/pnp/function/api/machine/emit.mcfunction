$execute unless entity @s[tag=pnp.hasout] run return run function pnp:card/pop {card:"$(c)"}
$data modify entity @s item.components."minecraft:custom_data".mo append value "$(c)"
function pnp:logistics/label/update
