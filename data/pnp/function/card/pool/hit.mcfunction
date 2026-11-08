$execute if score #packmode pnp.tmp matches 1 run return run data modify storage pnp:board pkr set value "$(c)"
$execute if data storage pnp:cards forage.$(c) run function pnp:chapter2/event_at {qk:"forage"}
$function pnp:card/pop {card:"$(c)"}
