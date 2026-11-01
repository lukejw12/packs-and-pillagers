execute store result score #gp pnp.tmp run random value 1..4
execute if score #gp pnp.tmp matches 1 run return run function pnp:fight/gear/give {g:"totem"}
execute if score #gp pnp.tmp matches 2 run return run function pnp:fight/gear/give {g:"trident"}
execute if score #gp pnp.tmp matches 3 run return run function pnp:fight/gear/give {g:"mace"}
execute if score #gp pnp.tmp matches 4 run return run function pnp:fight/gear/give {g:"evocation_staff"}
