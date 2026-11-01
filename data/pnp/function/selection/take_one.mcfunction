tag @s add pnp.selg
tag @s add pnp.held
scoreboard players operation @s pnp.selp = #me pnp.tmp
execute store result score @s pnp.sox run data get entity @s Pos[0] 1000
execute store result score @s pnp.soz run data get entity @s Pos[2] 1000
scoreboard players operation @s pnp.sdx = @s pnp.sox
scoreboard players operation @s pnp.sdx -= #cx pnp.tmp
scoreboard players operation @s pnp.sdz = @s pnp.soz
scoreboard players operation @s pnp.sdz -= #cz pnp.tmp
data merge entity @s {Glowing:1b,glow_color_override:5636095}
