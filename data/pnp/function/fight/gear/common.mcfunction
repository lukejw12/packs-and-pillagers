execute store result score #gp pnp.tmp run random value 1..2
execute if score #gp pnp.tmp matches 1 run return run function pnp:fight/gear/give {g:"bone"}
execute if score #gp pnp.tmp matches 2 run return run function pnp:fight/gear/give {g:"pumpkin"}
