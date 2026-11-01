execute if score #sent pnp.tmp matches 1 run return 1
execute if score #try pnp.tmp >= #nout pnp.tmp run return 0
scoreboard players add #try pnp.tmp 1
scoreboard players add @s pnp.rr 1
execute if score @s pnp.rr > #nout pnp.tmp run scoreboard players set @s pnp.rr 1
scoreboard players operation #sp pnp.tmp = @s pnp.rr
scoreboard players add #sp pnp.tmp 10
execute as @e[type=block_display,tag=pnp.link,distance=..48] if score @s pnp.lsrc = #su pnp.tmp if score @s pnp.lsp = #sp pnp.tmp at @s run function pnp:route/try_link
function pnp:route/send_loop
