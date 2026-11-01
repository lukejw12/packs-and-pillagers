$execute unless data storage pnp:board wsn.w$(id) run return 0
$execute store success score #wch pnp.tmp run data modify entity @s item.components."minecraft:custom_data".wname set from storage pnp:board wsn.w$(id)
execute if score #wch pnp.tmp matches 0 run return 0
execute on passengers if entity @s[type=text_display,tag=pnp.card_part,tag=!pnp.stat_label,tag=!pnp.sell_label,tag=!pnp.lstat] run data modify entity @s text set value {text:"",color:"black"}
$execute on passengers if entity @s[type=text_display,tag=pnp.card_part,tag=!pnp.stat_label,tag=!pnp.sell_label,tag=!pnp.lstat] run data modify entity @s text.text set from storage pnp:board wsn.w$(id)
function pnp:villager/title_fit
