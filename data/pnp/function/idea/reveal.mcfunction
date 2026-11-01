$data modify entity @s item.components."minecraft:item_model" set value "pnp:card/$(c)_shown"
$execute on passengers if entity @s[type=text_display,tag=pnp.card_part,tag=!pnp.stat_label,tag=!pnp.sell_label,tag=!pnp.lstat] run data modify entity @s text set value {text:"$(name)",color:"black"}
execute unless entity @s[tag=pnp.revealed] run particle minecraft:enchant ~ ~0.5 ~ 0.3 0.3 0.3 1 30
tag @s add pnp.revealed
