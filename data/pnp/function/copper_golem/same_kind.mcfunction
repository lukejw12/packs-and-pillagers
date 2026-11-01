scoreboard players operation #cs pnp.tmp = @s pnp.stack
data modify storage pnp:board gt.c set from entity @s item.components."minecraft:custom_data".card
return run function pnp:copper_golem/same_kind_for_card with storage pnp:board gt
