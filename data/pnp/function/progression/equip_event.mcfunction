$execute unless data entity @s item.components."minecraft:custom_data".eq{t:"$(c)"} run return 0
$execute if data storage pnp:cards defs.$(c){kind:"weapon"} run function pnp:chapter2/event_at {qk:"eq_weapon"}
$execute if data storage pnp:cards defs.$(c){kind:"tool"} run function pnp:chapter2/event_at {qk:"eq_tool"}
