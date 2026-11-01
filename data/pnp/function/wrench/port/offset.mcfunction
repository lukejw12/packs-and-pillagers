$execute if data storage pnp:cards machines.$(card) run return run function pnp:machine/ports/offset {card:"$(card)"}
$execute if data storage pnp:cards machine.$(card) run return run function pnp:wrench/port/offset_alias {card:"$(card)"}
$function pnp:wrench/port_offset/$(card)
