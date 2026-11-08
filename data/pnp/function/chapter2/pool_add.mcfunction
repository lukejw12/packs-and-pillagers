$data modify storage pnp:cards pools.$(p).e append value {c:"$(c)",w:$(w)}
$execute store result score #pt pnp.tmp run data get storage pnp:cards pools.$(p).t
$scoreboard players add #pt pnp.tmp $(w)
$execute store result storage pnp:cards pools.$(p).t int 1 run scoreboard players get #pt pnp.tmp
