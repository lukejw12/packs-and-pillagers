advancement revoke @s only pnp:leaf_common
execute store result score #roll pnp.tmp run random value 1..100
execute if score #roll pnp.tmp matches ..12 run function pnp:leaves/found
