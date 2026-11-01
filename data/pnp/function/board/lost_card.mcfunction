function pnp:hud/hide
scoreboard players operation #me pnp.tmp = @s pnp.pid
scoreboard players operation #hsid pnp.tmp = @s pnp.holding
execute if score @s pnp.holding matches 1.. as @e[type=item_display,tag=pnp.held] if score @s pnp.stack = #hsid pnp.tmp if score @s pnp.idx matches 0 at @s positioned ~ 65.01 ~ run function pnp:board/drop/free
function pnp:board/plot/get_coords
function pnp:board/clear_lost_card with storage pnp:board tmp
execute as @e[tag=pnp.board_ent] if score @s pnp.pid = #me pnp.tmp run kill @s
execute if score @s pnp.memo matches 1.. run function pnp:revive_menu/close
execute if score @s pnp.tool matches 1 run function pnp:wrench/off
tag @s remove pnp.in_board
scoreboard players set @s pnp.book -1
scoreboard players set @s pnp.hover 0
scoreboard players set @s pnp.holding 0
function pnp:tutorial/hide_self
scoreboard players reset @s pnp.gwj
execute at @s unless dimension pnp:board run function pnp:inventory/restore
execute at @s unless dimension pnp:board run function pnp:delivery/arrive
