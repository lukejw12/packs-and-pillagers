$data modify storage pnp:board c2gw.$(k)$(p) set value 1b
$function pnp:quest/on_event {o:$(p),qk:"$(qk)"}
