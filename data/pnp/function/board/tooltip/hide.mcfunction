execute as @e[type=text_display,tag=pnp.tooltip] if score @s pnp.pid = #me pnp.tmp run data merge entity @s {start_interpolation:0,transformation:{scale:[0f,0f,0f]}}
