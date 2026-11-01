execute store result score #ax pnp.tmp run data get entity @s Pos[0] 32
execute store result score #az pnp.tmp run data get entity @s Pos[2] 32
scoreboard players operation #ax pnp.tmp -= #mx pnp.tmp
scoreboard players operation #az pnp.tmp -= #mz pnp.tmp
execute if score #ax pnp.tmp matches ..-1 run scoreboard players operation #ax pnp.tmp *= #-1 pnp.tmp
execute if score #az pnp.tmp matches ..-1 run scoreboard players operation #az pnp.tmp *= #-1 pnp.tmp
execute if score #ax pnp.tmp > #mhw pnp.tmp run return 0
execute if score #az pnp.tmp matches 61.. run return 0
function pnp:fight_box/add
