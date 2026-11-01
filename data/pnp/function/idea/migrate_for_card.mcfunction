$execute if data storage pnp:cards ideas.$(c) run return 0
$execute store success score #new pnp.tmp run data modify storage pnp:found p$(p).$(c) set value 1b
$execute if score #new pnp.tmp matches 1 if data storage pnp:cards listed.$(c) run scoreboard players add #f$(p) pnp.found 1
data remove storage pnp:board mg.i
$data modify storage pnp:board mg.i set from storage pnp:cards card_idea.$(c)
execute if data storage pnp:board mg.i run function pnp:idea/grant with storage pnp:board mg
