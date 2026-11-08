$function pnp:quest_board/render_main {p:$(p),x:$(x)}
data modify storage pnp:board qbl append value {text:"\n",extra:[{translate:"pnp.quest_board.drop_cards_on_this_book_to",fallback:"Drop cards on this book to hand them in."}], color: "#8a7660", italic: true}
function pnp:quest_board/pad {l:"qbl",n:19}
$function pnp:quest_board/render_side {p:$(p)}
function pnp:quest_board/pad {l:"qbs",n:19}
$execute in pnp:board positioned $(x).5 65 16.25 as @e[type=text_display,tag=pnp.qb_l,distance=..5,limit=1] run data modify entity @s text set from storage pnp:board qbl
$execute in pnp:board positioned $(x).5 65 16.25 as @e[type=text_display,tag=pnp.qb_r,distance=..5,limit=1] run data modify entity @s text set from storage pnp:board qbs
