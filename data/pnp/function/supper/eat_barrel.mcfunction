$function pnp:supper/eat_barrel_loop {v:$(v),m:$(m)}
scoreboard players add #efx pnp.tmp 1
execute if score #efx pnp.tmp matches ..6 run particle minecraft:happy_villager ~ ~0.2 ~ 0.2 0.1 0.2 0 6
execute if score #efx pnp.tmp matches ..6 run playsound minecraft:entity.generic.eat master @a[distance=..32] ~ ~ ~ 0.6 1.1
function pnp:logistics/barrel/fix
