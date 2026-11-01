execute store result score #gp pnp.tmp run random value 1..3
execute if score #gp pnp.tmp matches 1 run return run function pnp:fight/gear/give {g:"rabbit_foot"}
execute if score #gp pnp.tmp matches 2 run return run function pnp:fight/gear/give {g:"compass"}
execute if score #gp pnp.tmp matches 3 run return run function pnp:fight/gear/give {g:"clock"}
