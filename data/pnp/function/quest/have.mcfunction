data modify storage pnp:board qh.want set from entity @s item.components."minecraft:custom_data".want
scoreboard players operation #qold pnp.tmp = @s pnp.qprog
function pnp:quest/have_item with storage pnp:board qh
execute if score @s pnp.qprog > @s pnp.qneed run scoreboard players operation @s pnp.qprog = @s pnp.qneed
execute unless score @s pnp.qprog = #qold pnp.tmp run function pnp:quest/label
