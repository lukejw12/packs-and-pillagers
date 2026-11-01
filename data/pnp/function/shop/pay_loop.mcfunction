execute unless score @s pnp.paid >= @s pnp.price run return 0
scoreboard players operation @s pnp.paid -= @s pnp.price
data modify storage pnp:board sh.card set from entity @s item.components."minecraft:custom_data".card
function pnp:shop/give with storage pnp:board sh
function pnp:shop/count
particle minecraft:happy_villager ~ ~0.3 ~ 0.3 0.1 0.3 0 10
playsound minecraft:entity.villager.yes master @a[distance=..24] ~ ~ ~ 1 1.2
function pnp:shop/pay_loop
