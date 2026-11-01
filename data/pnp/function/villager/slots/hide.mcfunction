execute as @e[type=item_display,tag=pnp.slot_ent] if score @s pnp.pid = #me pnp.tmp run kill @s
scoreboard players set @s pnp.svil 0
scoreboard players set @s pnp.sslot 0
