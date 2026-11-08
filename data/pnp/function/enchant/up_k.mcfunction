$data modify storage pnp:board eg set from storage pnp:cards ench_gear.$(c)
execute if data storage pnp:board eg{k:"w"} run data modify storage pnp:board en.k set value "w"
execute if data storage pnp:board eg{k:"w"} run data modify storage pnp:board en.id set from storage pnp:board eg.e
execute if data storage pnp:board eg{k:"a"} unless data storage pnp:board en.id run function pnp:enchant/roll_armor
