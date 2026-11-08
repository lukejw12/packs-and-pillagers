scoreboard players operation #bch pnp.tmp = @s pnp.bcn
scoreboard players reset @s pnp.bcn
scoreboard players operation #bcu pnp.tmp = @s pnp.bcu
execute at @s as @e[type=item_display,tag=pnp.c.beacon,distance=..40] if score @s pnp.uid = #bcu pnp.tmp run function pnp:beacon/set_buff
