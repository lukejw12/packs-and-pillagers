scoreboard players operation #tx pnp.tmp = #cx pnp.tmp
scoreboard players operation #tx pnp.tmp += @s pnp.sdx
scoreboard players operation #tz pnp.tmp = #cz pnp.tmp
scoreboard players operation #tz pnp.tmp += @s pnp.sdz
execute store result entity @s Pos[0] double 0.001 run scoreboard players get #tx pnp.tmp
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #tz pnp.tmp
