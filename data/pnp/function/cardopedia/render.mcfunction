scoreboard players set #12 pnp.tmp 12
execute as @e[tag=pnp.pd_ent] if score @s pnp.pid = #me pnp.tmp run kill @s
execute as @e[type=text_display,tag=pnp.book_ent,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value ""
execute as @e[type=item_display,tag=pnp.book_card,distance=..40] if score @s pnp.pid = #me pnp.tmp run item replace entity @s contents with minecraft:air
scoreboard players set @s pnp.phov -1
execute store result storage pnp:pedia2 ps.p int 1 run scoreboard players get @s pnp.here
execute store result storage pnp:pedia2 ps.me int 1 run scoreboard players get #me pnp.tmp
execute store result storage pnp:pedia2 ps.k int 1 run scoreboard players get @s pnp.pcat
execute if entity @s[tag=pnp.pd_admin] if score @s pnp.pcat matches ..0 run return run function pnp:cardopedia/index_admin
execute if score @s pnp.pcat matches ..0 run return run function pnp:cardopedia/index
function pnp:cardopedia/grid
