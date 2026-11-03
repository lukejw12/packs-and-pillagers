execute if score @s pnp.plot matches 3 run return run tellraw @s {translate:"pnp.debug.you_re_on_the_shared_table",fallback:"You're on the shared table. Only its owner can reset it, or turn the shared table off first.",color:"red"}
execute if entity @s[tag=pnp.in_board] run function pnp:board/close
function pnp:board/plot/get_coords
execute store result storage pnp:board tmp.p int 1 run scoreboard players get @s pnp.pid
function pnp:debug/reset_board_at with storage pnp:board tmp
