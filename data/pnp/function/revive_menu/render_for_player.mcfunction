execute as @e[type=text_display,tag=pnp.memo_title,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value {translate:"pnp.revive_menu.fallen_villagers",fallback:"Fallen Villagers",color:"#7a1f1f",bold:true}
execute as @e[type=text_display,tag=pnp.memo_r0,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value {text:"—",color:"#b8a688"}
$execute if data storage pnp:graves p$(p)[0] run function pnp:revive_menu/row {p:$(p),k:0}
execute as @e[type=text_display,tag=pnp.memo_r1,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value {text:"—",color:"#b8a688"}
$execute if data storage pnp:graves p$(p)[1] run function pnp:revive_menu/row {p:$(p),k:1}
execute as @e[type=text_display,tag=pnp.memo_r2,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value {text:"—",color:"#b8a688"}
$execute if data storage pnp:graves p$(p)[2] run function pnp:revive_menu/row {p:$(p),k:2}
execute as @e[type=text_display,tag=pnp.memo_r3,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value {text:"—",color:"#b8a688"}
$execute if data storage pnp:graves p$(p)[3] run function pnp:revive_menu/row {p:$(p),k:3}
execute as @e[type=text_display,tag=pnp.memo_r4,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value {text:"—",color:"#b8a688"}
$execute if data storage pnp:graves p$(p)[4] run function pnp:revive_menu/row {p:$(p),k:4}
$execute unless data storage pnp:graves p$(p)[0] as @e[type=text_display,tag=pnp.memo_r1,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value {translate:"pnp.revive_menu.nobody_has_fallen_yet",fallback:"Nobody has fallen yet.",color:"#7a6650",italic:true}
