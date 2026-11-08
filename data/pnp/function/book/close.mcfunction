execute as @e[tag=pnp.book_ent] if score @s pnp.pid = #me pnp.tmp run kill @s
scoreboard players set @s pnp.book -1
scoreboard players set @s pnp.hover -1
playsound minecraft:item.book.put master @s ~ ~ ~ 1 1
tag @s remove pnp.pd_open
tag @s remove pnp.pd_admin
