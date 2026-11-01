$execute as @e[type=text_display,tag=pnp.book_lh,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value [{text:"◂ Contents   ",color:"#7a6650"},{text:"$(n)",color:"#7a1f1f",bold:true}]
$execute as @e[type=text_display,tag=pnp.book_rh,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value {text:"$(pg) / $(pgs)",color:"#7a6650"}
