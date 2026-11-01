$execute as @e[type=item_display,tag=pnp.book_base,distance=..40] if score @s pnp.pid = #me pnp.tmp at @s run summon item_display ~-1.5 ~1.55 ~0.45 {Tags:["pnp.board_ent","pnp.book_ent","pnp.pd_ent","pnp.pd_det","pnp.pd_dnew"],billboard:"center",brightness:{sky:15,block:15},item_display:"none",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"pnp:card/$(id)"}},transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.45f,1.45f,1.45f]}}
execute as @e[type=item_display,tag=pnp.book_base,distance=..40] if score @s pnp.pid = #me pnp.tmp at @s run summon text_display ~1.05 ~1.35 ~0.45 {Tags:["pnp.board_ent","pnp.book_ent","pnp.pd_ent","pnp.pd_det","pnp.pd_dnew","pnp.pd_tipnew"],billboard:"center",brightness:{sky:15,block:15},background:-1340071920,shadow:0b,alignment:"left",line_width:175,text:"",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.78f,0.78f,0.78f]}}
$execute as @e[tag=pnp.pd_tipnew] run data modify entity @s text set from storage pnp:pedia2 tip.$(id)
tag @e[tag=pnp.pd_tipnew] remove pnp.pd_tipnew
data modify storage pnp:pedia2 dtt set value {n:"???",st:0.51f,tzs:-0.2253f}
$data modify storage pnp:pedia2 dtt.n set from storage pnp:pedia2 meta.$(id).n
$data modify storage pnp:pedia2 dtt.st set from storage pnp:pedia2 meta.$(id).st
$data modify storage pnp:pedia2 dtt.tzs set from storage pnp:pedia2 meta.$(id).tzs
function pnp:cardopedia/detail/calculate_title
