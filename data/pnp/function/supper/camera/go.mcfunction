$execute as @e[type=item_display,tag=pnp.camera] if score @s pnp.pid = #me pnp.tmp run data modify entity @s teleport_duration set value $(d)
execute as @e[type=item_display,tag=pnp.sfocus] if score @s pnp.vown = #me pnp.tmp at @s positioned ~ ~2.4 ~1.6 as @e[type=item_display,tag=pnp.camera] if score @s pnp.pid = #me pnp.tmp run tp @s ~ ~ ~
