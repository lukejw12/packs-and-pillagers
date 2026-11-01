$data modify entity @s item.components."minecraft:custom_data".vname set value "$(n)"
$execute on passengers if entity @s[type=text_display,tag=pnp.card_part,tag=!pnp.stat_label,tag=!pnp.sell_label,tag=!pnp.lstat] run data modify entity @s text set value {text:"$(n)",color:"black"}
tag @s add pnp.named
