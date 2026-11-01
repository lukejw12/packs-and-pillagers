$data modify storage pnp:board adm.c set value "$(c)"
scoreboard players set @s pnp.bdet 1
$data modify storage pnp:board pgsrc set from storage pnp:book d.$(c)
$function pnp:book/page_from {p:$(p),side:"r"}
execute as @e[type=text_display,tag=pnp.book_l,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set from storage pnp:board pgsrc.lb
execute as @e[type=text_display,tag=pnp.book_lh,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set from storage pnp:board pgsrc.lh
function pnp:book/show_card with storage pnp:board pgsrc
execute as @e[type=text_display,tag=pnp.book_ct,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set from storage pnp:board pgsrc.tt
execute as @e[type=text_display,tag=pnp.book_cs,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set from storage pnp:board pgsrc.st
function pnp:book/scale_count_text with storage pnp:board pgsrc
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 1.3
execute if score @s pnp.bset matches 2 run title @s actionbar {text:"Click the right page to spawn this card, or the left page to go back.",color:"gold"}
