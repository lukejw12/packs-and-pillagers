data remove storage pnp:machine self
data modify storage pnp:machine self.id set from entity @s item.components."minecraft:custom_data".card
$data modify storage pnp:machine self.f set value "$(f)"
function pnp:machine/call_lookup with storage pnp:machine self
