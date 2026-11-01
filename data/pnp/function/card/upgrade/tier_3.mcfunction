tag @s add pnp.v3
tag @s add pnp.v4
execute on passengers if entity @s[tag=pnp.stat_label] run data merge entity @s {transformation:{translation:[0f,0.0145f,0.44f],scale:[0.3f,0.3f,0.3f]}}
execute on passengers if entity @s[tag=pnp.wpn_icon] run data merge entity @s {transformation:{translation:[0.27f,0.02f,0.375f],scale:[0.12f,0.12f,0.12f]}}
