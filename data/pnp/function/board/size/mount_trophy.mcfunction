$execute as @e[type=item_display,tag=pnp.trp] on passengers if entity @s[type=text_display,tag=pnp.card_part,tag=!pnp.stat_label,tag=!pnp.sell_label,tag=!pnp.lstat] run data modify entity @s text set value {text:"$(n)",color:"black"}
execute as @e[type=item_display,tag=pnp.trp] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0.3 0.3 0.3 0.05 30
tag @e[type=item_display,tag=pnp.trp] add pnp.mounted
tag @e[type=item_display,tag=pnp.trp] remove pnp.trp
scoreboard players add @s pnp.bxtra 1
function pnp:hud/update
