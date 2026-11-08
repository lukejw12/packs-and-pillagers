$execute unless data storage pnp:found p$(p).nether_portal run return 0
execute store result score #inr pnp.tmp run random value 1..3
execute unless score #inr pnp.tmp matches 1 run return 0
return 1
