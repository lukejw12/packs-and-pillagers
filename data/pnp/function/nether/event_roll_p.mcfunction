$execute unless data storage pnp:nether built2.p$(p) run return 0
$execute store result score #nev pnp.tmp run data get storage pnp:nether evday.p$(p)
execute if score #nev pnp.tmp = #day pnp.tmp run return 0
$execute store result storage pnp:nether evday.p$(p) int 1 run scoreboard players get #day pnp.tmp
execute store result score #nevr pnp.tmp run random value 1..4
execute unless score #nevr pnp.tmp matches 1 run return 0
$function pnp:nether/coords {p:$(p)}
execute store result score #nevk pnp.tmp run random value 1..2
execute if score #nevk pnp.tmp matches 1 run function pnp:nether/event_storm with storage pnp:board nt
execute if score #nevk pnp.tmp matches 2 run function pnp:nether/event_stampede with storage pnp:board nt
