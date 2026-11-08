execute store result storage pnp:board adm.p int 1 run scoreboard players get @s pnp.here
execute store result score #adx pnp.tmp run scoreboard players get @s pnp.here
scoreboard players operation #adx pnp.tmp *= #1024 pnp.tmp
execute store result storage pnp:board adm.x0 int 1 run scoreboard players remove #adx pnp.tmp 64
scoreboard players add #adx pnp.tmp 80
execute store result storage pnp:board adm.x int 1 run scoreboard players get #adx pnp.tmp
