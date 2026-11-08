$execute store result score #bh pnp.tmp run data get entity @s item.components."minecraft:custom_data".bs.$(c)
$execute if score #bh pnp.tmp matches ..$(k) unless score #bh pnp.tmp matches $(k) run scoreboard players set #bok pnp.tmp 0
