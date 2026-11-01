scoreboard players operation #cu pnp.tmp = @s pnp.puid
scoreboard players operation #cp pnp.tmp = @s pnp.pnum
execute if score #cp pnp.tmp matches 11.. as @e[type=block_display,tag=pnp.link,distance=..48] if score @s pnp.lsrc = #cu pnp.tmp if score @s pnp.lsp = #cp pnp.tmp at @s run function pnp:wrench/link/dead
execute if score #cp pnp.tmp matches ..4 as @e[type=block_display,tag=pnp.link,distance=..48] if score @s pnp.ldst = #cu pnp.tmp if score @s pnp.ldp = #cp pnp.tmp at @s run function pnp:wrench/link/dead
