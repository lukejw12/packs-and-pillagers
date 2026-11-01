scoreboard players set @s pnp.bdet 0
execute as @e[type=item_display,tag=pnp.book_card,distance=..40] if score @s pnp.pid = #me pnp.tmp run item replace entity @s contents with minecraft:air
execute as @e[type=text_display,tag=pnp.book_ct,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value ""
execute as @e[type=text_display,tag=pnp.book_cs,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value ""
function pnp:book/render
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.9
