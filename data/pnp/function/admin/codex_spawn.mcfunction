$execute as @e[type=item_display,tag=pnp.book_base,distance=..40] if score @s pnp.pid = #me pnp.tmp at @s positioned ~ 65.01 ~2.9 run function pnp:admin/spawn_card {c:"$(id)"}
