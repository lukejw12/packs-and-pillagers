scoreboard players operation @s pnp.pown = #pp pnp.tmp
$scoreboard players set @s pnp.ptp $(q)
execute on passengers if entity @s[type=text_display,tag=pnp.card_part,tag=!pnp.stat_label,tag=!pnp.sell_label,tag=!pnp.lstat] run data modify entity @s text set value {text:"",color:"black",extra:[]}
$execute on passengers if entity @s[type=text_display,tag=pnp.card_part,tag=!pnp.stat_label,tag=!pnp.lstat] run data modify entity @s text.extra append from storage pnp:pvp names.p$(q)
execute on passengers if entity @s[type=text_display,tag=pnp.card_part,tag=!pnp.stat_label,tag=!pnp.lstat] run data modify entity @s text.extra append value "'s Portal"
execute on passengers if entity @s[type=text_display,tag=pnp.card_part,tag=!pnp.stat_label,tag=!pnp.lstat] run data merge entity @s {line_width:90,transformation:{translation:[0f,0.0145f,-0.25f],scale:[0.36f,0.36f,0.36f]}}
particle minecraft:portal ~ ~0.3 ~ 0.3 0.2 0.3 0.4 30
$tellraw @a[tag=pnp.ppcur] [{text:"",extra:[{translate:"pnp.pvp.a_portal_to",fallback:"A portal to"}," "],color:"light_purple"},{storage:"pnp:pvp",nbt:"names.p$(q)",interpret:true,color:"white"},{translate:"pnp.pvp.s_table_appeared_on_your_table",fallback:"'s table appeared on your table. Drop fighters on it and right-click to attack.",color:"light_purple"}]
