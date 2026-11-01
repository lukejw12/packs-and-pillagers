data modify entity @s item.components."minecraft:custom_data".wp set from storage pnp:board wp
$execute on passengers if entity @s[type=text_display,tag=pnp.card_part,tag=!pnp.stat_label,tag=!pnp.lstat] run data merge entity @s {text:{text:"$(x), $(z)",color:"black"}}
