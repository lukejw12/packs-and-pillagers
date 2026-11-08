execute store result storage pnp:beacon st.fuel int 1 run function pnp:api/machine/count
execute store result storage pnp:beacon st.tier int 1 run scoreboard players get @s pnp.btier
data modify storage pnp:beacon st.buff set value {translate:"pnp.beacon.none",fallback:"none yet"}
execute if data entity @s item.components."minecraft:custom_data"{bf:"haste"} run data modify storage pnp:beacon st.buff set value {translate:"pnp.beacon.haste",fallback:"Haste"}
execute if data entity @s item.components."minecraft:custom_data"{bf:"tough"} run data modify storage pnp:beacon st.buff set value {translate:"pnp.beacon.tough",fallback:"Toughness"}
execute if data entity @s item.components."minecraft:custom_data"{bf:"slots"} run data modify storage pnp:beacon st.buff set value {translate:"pnp.beacon.slots",fallback:"Capacity"}
