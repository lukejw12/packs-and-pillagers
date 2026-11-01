tag @s add pnp.v6
execute if entity @s[tag=pnp.c.villager] run return run function pnp:villager/title_fit
data modify storage pnp:board tf.c set from entity @s item.components."minecraft:custom_data".card
function pnp:card/title/fit_card with storage pnp:board tf
