data modify entity @s item.components."minecraft:custom_data".eq set from storage pnp:board adm.al[0]
function pnp:villager/recalculate
execute if score #ai pnp.tmp matches 0 run scoreboard players operation #ast pnp.tmp = @s pnp.stack
execute unless score #ai pnp.tmp matches 0 run scoreboard players operation @s pnp.stack = #ast pnp.tmp
scoreboard players operation @s pnp.idx = #ai pnp.tmp
