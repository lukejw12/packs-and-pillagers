$execute in pnp:board unless block $(x) 64 15 minecraft:brown_wool run return 0
$function pnp:quest_board/init {p:$(p)}
$execute in pnp:board positioned $(x).5 65.02 16.25 unless entity @e[type=item_display,tag=pnp.qbook,tag=pnp.qb2,distance=..1] run kill @e[tag=pnp.qb_ent,distance=..5]
$execute in pnp:board positioned $(x).5 65.02 16.25 unless entity @e[type=item_display,tag=pnp.qbook,distance=..1] run function pnp:quest_board/spawn
$execute in pnp:board as @e[type=text_display,tag=pnp.qtitle,x=$(x).5,y=65,z=10.75,distance=..1.5] run data modify entity @s text set value {text:"✎ ",extra:[{translate:"pnp.quest_board.quest_book",fallback:"Quest Book"}],color:"#ffe9b0",bold:true}
$execute in pnp:board positioned $(x).5 65 15.5 as @e[type=item_display,tag=pnp.k.quest,distance=..9] run function pnp:card/remove
$function pnp:quest_board/have {p:$(p)}
$function pnp:quest_board/render {p:$(p),x:$(x)}
