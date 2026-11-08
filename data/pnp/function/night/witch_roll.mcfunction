$execute unless data storage pnp:found p$(p).swamp run return 0
execute store result score #nwr pnp.tmp run random value 1..100
execute if score #nwr pnp.tmp matches ..12 run data modify storage pnp:board ns.card set value "witch"
