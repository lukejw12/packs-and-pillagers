execute store result score #gr pnp.tmp run random value 1..4
execute if score #gr pnp.tmp matches 1 run return run function pnp:fight/gear/legendary
function pnp:fight/gear/rare
