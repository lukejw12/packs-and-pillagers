execute if entity @s[tag=pnp.c.illusioner] run return run function pnp:fight/gear/legendary
execute if entity @s[tag=pnp.c.evoker] run return run function pnp:fight/gear/miniboss
execute if entity @s[tag=pnp.c.ravager] run return run function pnp:fight/gear/miniboss
execute store result score #gr pnp.tmp run random value 1..100
execute if score #gr pnp.tmp matches 1..10 run return run function pnp:fight/gear/common
execute if score #gr pnp.tmp matches 11..14 run return run function pnp:fight/gear/uncommon
execute if score #gr pnp.tmp matches 15 run return run function pnp:fight/gear/rare
