data modify storage pnp:board cmp.a set from storage pnp:board lbt.t
execute store success score #diff pnp.tmp run data modify storage pnp:board cmp.a set from entity @s item.components."minecraft:custom_data".card
execute if score #diff pnp.tmp matches 1 run scoreboard players set #bad pnp.tmp 1
