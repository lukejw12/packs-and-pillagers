execute as @e[tag=pnp.memo_ent] if score @s pnp.pid = #me pnp.tmp run kill @s
scoreboard players set @s pnp.memo -1
scoreboard players set @s pnp.hover -1
playsound minecraft:item.book.put master @s ~ ~ ~ 0.8 1.2
