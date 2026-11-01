$execute store result score #n pnp.tmp run data get storage pnp:board scan.counts.$(c)
scoreboard players add #n pnp.tmp 1
$execute store result storage pnp:board scan.counts.$(c) int 1 run scoreboard players get #n pnp.tmp
