scoreboard players set @s pnp.deaths 0
execute if dimension pnp:board run return 0
function pnp:board/plot/get_coords
scoreboard players set #shr pnp.tmp 0
function pnp:grave/check_shrine_at_plot with storage pnp:board tmp
execute if score #shr pnp.tmp matches 0 run return 0
data modify storage pnp:lost new set value []
execute as @e[type=item,distance=..8] run function pnp:grave/take
execute unless data storage pnp:lost new[0] run return 0
scoreboard players add #gid pnp.ids 1
execute store result storage pnp:board gr.g int 1 run scoreboard players get #gid pnp.ids
function pnp:grave/store with storage pnp:board gr
function pnp:world/deliver {card:"grave"}
execute in pnp:board as @e[type=item_display,tag=pnp.c.grave] if score @s pnp.uid = #uid pnp.ids run function pnp:grave/bind with storage pnp:board gr
tellraw @s {translate:"pnp.grave.your_things_were_saved_in_a",fallback:"Your stuff is safe in a Grave on your card table. Right-click it there to get it back.",color:"gold"}
