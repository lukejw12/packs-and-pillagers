scoreboard players set #rnf pnp.tmp 1
data modify entity @s item.components."minecraft:custom_data".vname set from storage pnp:board rn.n
execute on passengers if entity @s[type=text_display,tag=pnp.card_part,tag=!pnp.stat_label,tag=!pnp.sell_label,tag=!pnp.lstat] run data modify entity @s text set value {text:"",color:"black"}
execute on passengers if entity @s[type=text_display,tag=pnp.card_part,tag=!pnp.stat_label,tag=!pnp.sell_label,tag=!pnp.lstat] run data modify entity @s text.text set from storage pnp:board rn.n
tag @s add pnp.named
function pnp:villager/title_fit
