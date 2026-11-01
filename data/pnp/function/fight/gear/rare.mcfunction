execute store result score #gp pnp.tmp run random value 1..4
execute if score #gp pnp.tmp matches 1 run return run function pnp:fight/gear/give {g:"prismarine_shard"}
execute if score #gp pnp.tmp matches 2 run return run function pnp:fight/gear/give {g:"echo_shard"}
execute if score #gp pnp.tmp matches 3 run return run function pnp:fight/gear/give {g:"iron_sword"}
execute if score #gp pnp.tmp matches 4 run return run function pnp:fight/gear/give {g:"bow"}
