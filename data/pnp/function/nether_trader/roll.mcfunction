execute store result score #ntr pnp.tmp run random value 1..1200
execute unless score #ntr pnp.tmp matches 1 run return 0
function pnp:nether/table_p
function pnp:nether_trader/roll_p with storage pnp:board ng
