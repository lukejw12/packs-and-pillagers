$execute on passengers if entity @s[tag=pnp.stat_label] run data merge entity @s {text:[{sprite:"item/barrier",atlas:"minecraft:items"},{text:" $(h)/3 $(kn)",color:"red"}]}
execute unless function pnp:shop/has_lock_effect at @s run function pnp:shop/add_lock_effect
