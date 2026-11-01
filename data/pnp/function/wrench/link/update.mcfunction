scoreboard players operation #su pnp.tmp = @s pnp.lsrc
scoreboard players operation #du pnp.tmp = @s pnp.ldst
scoreboard players set #fa pnp.tmp 0
scoreboard players set #fb pnp.tmp 0
scoreboard players operation #pn pnp.tmp = @s pnp.lsp
execute as @e[type=item_display,tag=pnp.card,distance=..40] if score @s pnp.uid = #su pnp.tmp run function pnp:wrench/port/position_a
scoreboard players operation #pn pnp.tmp = @s pnp.ldp
execute as @e[type=item_display,tag=pnp.card,distance=..40] if score @s pnp.uid = #du pnp.tmp run function pnp:wrench/port/position_b
execute if score #fa pnp.tmp matches 0 run return run function pnp:wrench/link/dead
execute if score #fb pnp.tmp matches 0 run return run function pnp:wrench/link/dead
execute store result storage pnp:board lk.ax double 0.001 run scoreboard players get #ax pnp.tmp
execute store result storage pnp:board lk.az double 0.001 run scoreboard players get #az pnp.tmp
execute store result storage pnp:board lk.bx double 0.001 run scoreboard players get #bx2 pnp.tmp
execute store result storage pnp:board lk.bz double 0.001 run scoreboard players get #bz2 pnp.tmp
function pnp:wrench/link/teleport with storage pnp:board lk
scoreboard players operation #dx pnp.tmp = #bx2 pnp.tmp
scoreboard players operation #dx pnp.tmp -= #ax pnp.tmp
scoreboard players operation #dz pnp.tmp = #bz2 pnp.tmp
scoreboard players operation #dz pnp.tmp -= #az pnp.tmp
function pnp:wrench/link/length
data merge entity @s {start_interpolation:0,interpolation_duration:2,teleport_duration:2}
execute store result entity @s transformation.scale[2] float 0.001 run scoreboard players get #len pnp.tmp
scoreboard players operation @s pnp.llen = #len pnp.tmp
