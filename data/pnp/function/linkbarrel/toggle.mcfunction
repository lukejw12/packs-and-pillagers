execute if data entity @s item.components."minecraft:custom_data"{lbm:"out"} run return run function pnp:linkbarrel/set_in
data modify entity @s item.components."minecraft:custom_data".lbm set value "out"
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.linkbarrel.out",fallback:"Linked Barrel: cards piped in go to the real barrel.",color:"gold"}
