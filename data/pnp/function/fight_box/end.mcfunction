execute as @e[type=item_display,tag=pnp.infight,distance=..14] if score @s pnp.fid = #fid pnp.tmp run function pnp:fight_box/release
execute as @e[type=item_display,tag=pnp.fbox] if score @s pnp.fid = #fid pnp.tmp run kill @s
tag @s remove pnp.fcur
kill @s
