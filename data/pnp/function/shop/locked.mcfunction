execute if entity @s[tag=pnp.c.shop_wastes] run return fail
execute if entity @s[tag=pnp.c.piglin_merchant] run return fail
execute if entity @s[tag=pnp.c.shop_humble] run return fail
execute if entity @s[tag=pnp.c.wandering_trader] run return fail
execute if entity @s[tag=pnp.c.shop_side] run return fail
execute store result score #lkp pnp.tmp run data get entity @s Pos[0]
scoreboard players add #lkp pnp.tmp 64
scoreboard players operation #lkp pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board lk.p int 1 run scoreboard players get #lkp pnp.tmp
return run function pnp:shop/locked_for_player with storage pnp:board lk
