$execute unless data storage pnp:cards vtool.$(c) run return 0
$execute store result score #vv pnp.tmp run data get storage pnp:board scan.counts.$(c)
scoreboard players add #vv pnp.tmp 1
$execute store result storage pnp:board scan.counts.$(c) int 1 run scoreboard players get #vv pnp.tmp
scoreboard players add #vn pnp.tmp 1
