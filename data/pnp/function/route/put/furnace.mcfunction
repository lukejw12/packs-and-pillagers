$execute if data storage pnp:cards smelt.$(c) run data modify entity @s item.components."minecraft:custom_data".fq append value "$(c)"
$execute if data storage pnp:cards fuel.$(c) store result score #fv pnp.tmp run data get storage pnp:cards fuel.$(c)
$execute if data storage pnp:cards fuel.$(c) run scoreboard players operation @s pnp.ffuel += #fv pnp.tmp
function pnp:logistics/label/update
