execute on passengers if entity @s[tag=pnp.lockfx] run kill @s
$execute on passengers if entity @s[tag=pnp.stat_label] run data merge entity @s {text:[{sprite:"item/emerald",atlas:"minecraft:items"},{text:" $(paid)/$(price)",color:"dark_green"}]}
