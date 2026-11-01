execute store result score #ax pnp.tmp run data get entity @s Pos[0] 32
execute store result score #az pnp.tmp run data get entity @s Pos[2] 32
scoreboard players operation #ax pnp.tmp -= #cx pnp.tmp
scoreboard players operation #az pnp.tmp -= #cz pnp.tmp
execute if score #ax pnp.tmp matches ..-1 run scoreboard players operation #ax pnp.tmp *= #-1 pnp.tmp
execute if score #az pnp.tmp matches ..-1 run scoreboard players operation #az pnp.tmp *= #-1 pnp.tmp
scoreboard players operation #mhw pnp.tmp = @s pnp.fhw
scoreboard players add #mhw pnp.tmp 13
execute if score #ax pnp.tmp > #mhw pnp.tmp run return 0
execute if score #az pnp.tmp matches 67.. run return 0
scoreboard players operation #fid pnp.tmp = @s pnp.fid
