execute if score #bch pnp.tmp matches 1 run data modify entity @s item.components."minecraft:custom_data".bf set value "haste"
execute if score #bch pnp.tmp matches 2 run data modify entity @s item.components."minecraft:custom_data".bf set value "tough"
execute if score #bch pnp.tmp matches 3 run data modify entity @s item.components."minecraft:custom_data".bf set value "slots"
execute at @s run playsound minecraft:block.beacon.power_select block @a[distance=..24] ~ ~ ~ 0.6 1
execute at @s run particle minecraft:end_rod ~ ~0.6 ~ 0.2 0.4 0.2 0.02 12
function pnp:progression/beacon_lit
