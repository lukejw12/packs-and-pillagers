execute as @e[type=text_display,tag=pnp.kbkey,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s background set value -13799466
$execute as @e[type=text_display,tag=pnp.kbk_$(k),distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s background set value -9457409
$execute as @e[type=text_display,tag=pnp.kb_info,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value [{keybind:"$(kb)",color:"#6fb0ff",bold:true},{text:"  $(d)",color:"white"}]
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.6 1.4
