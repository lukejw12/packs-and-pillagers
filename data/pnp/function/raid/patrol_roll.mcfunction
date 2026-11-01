execute store result score #roll pnp.tmp run random value 1..600
execute if score #roll pnp.tmp matches 1 run function pnp:raid/patrol
