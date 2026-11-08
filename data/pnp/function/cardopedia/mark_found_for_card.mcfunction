$execute store success score #new pnp.tmp run data modify storage pnp:found p$(p).$(c) set value 1b
execute if score #new pnp.tmp matches 0 run return 0
$function pnp:idea/find_unlock {p:$(p),c:"$(c)"}
$function pnp:tips/check {p:$(p),c:"$(c)"}
$execute unless data storage pnp:cards listed.$(c) run return 0
$scoreboard players add #f$(p) pnp.found 1
$function pnp:chapter2/found_event {p:$(p),c:"$(c)"}
