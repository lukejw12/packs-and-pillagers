scoreboard players operation #x1 pnp.tmp = #pcx pnp.tmp
scoreboard players operation #x1 pnp.tmp < @p[tag=pnp.painter] pnp.pax
scoreboard players operation #x2 pnp.tmp = #pcx pnp.tmp
scoreboard players operation #x2 pnp.tmp > @p[tag=pnp.painter] pnp.pax
scoreboard players operation #z1 pnp.tmp = #pcz pnp.tmp
scoreboard players operation #z1 pnp.tmp < @p[tag=pnp.painter] pnp.paz
scoreboard players operation #z2 pnp.tmp = #pcz pnp.tmp
scoreboard players operation #z2 pnp.tmp > @p[tag=pnp.painter] pnp.paz
execute store result storage pnp:board pf.x1 int 1 run scoreboard players get #x1 pnp.tmp
execute store result storage pnp:board pf.x2 int 1 run scoreboard players get #x2 pnp.tmp
execute store result storage pnp:board pf.z1 int 1 run scoreboard players get #z1 pnp.tmp
execute store result storage pnp:board pf.z2 int 1 run scoreboard players get #z2 pnp.tmp
scoreboard players operation #pi pnp.tmp = @p[tag=pnp.painter] pnp.paint
scoreboard players remove #pi pnp.tmp 1
execute store result storage pnp:board pf.i int 1 run scoreboard players get #pi pnp.tmp
function pnp:paint/fill with storage pnp:board pf
scoreboard players set @p[tag=pnp.painter] pnp.pcs 0
execute as @e[type=block_display,tag=pnp.pmark] if score @s pnp.pid = #me pnp.tmp run kill @s
playsound minecraft:block.wool.place master @p[tag=pnp.painter] ~ ~ ~ 0.8 1
