$execute as @e[type=text_display,tag=pnp.book_ct,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s transformation.scale set value [$(ts)f,$(ts)f,$(ts)f]
