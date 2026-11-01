$execute as @e[type=item_display,tag=pnp.book_card,distance=..40] if score @s pnp.pid = #me pnp.tmp run item replace entity @s contents with minecraft:paper[minecraft:item_model="$(m)"]
