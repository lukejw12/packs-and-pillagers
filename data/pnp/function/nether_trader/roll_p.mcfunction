$execute unless data storage pnp:nether built2.p$(p) run return 0
$execute store result score #ntm pnp.tmp run data get storage pnp:qb p$(p).m
execute if score #ntm pnp.tmp matches ..21 run return 0
$function pnp:nether_trader/arrive_p {p:$(p)}
