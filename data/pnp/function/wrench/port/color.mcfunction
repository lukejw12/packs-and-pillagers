execute if score @s pnp.portid = #ph pnp.tmp run return run data merge entity @s {glow_color_override:16777215,transformation:{scale:[0.42f,0.42f,0.42f]}}
execute if entity @s[tag=pnp.psel] run return run data merge entity @s {glow_color_override:16776960,transformation:{scale:[0.38f,0.38f,0.38f]}}
execute if entity @s[tag=pnp.port_in] run return run data merge entity @s {glow_color_override:5635925,transformation:{scale:[0.3f,0.3f,0.3f]}}
data merge entity @s {glow_color_override:16755200,transformation:{scale:[0.3f,0.3f,0.3f]}}
