$execute unless data storage pnp:packs p$(p).v run return fail
execute if entity @s[tag=pnp.c.shop_farm] run data modify storage pnp:board lk merge value {k:"humble",kn:"Humble"}
execute if entity @s[tag=pnp.c.shop_adventure] run data modify storage pnp:board lk merge value {k:"farm",kn:"Farm"}
execute if entity @s[tag=pnp.c.shop_combat] run data modify storage pnp:board lk merge value {k:"adventure",kn:"Adventure"}
execute if entity @s[tag=pnp.c.shop_caving] run data modify storage pnp:board lk merge value {k:"adventure",kn:"Adventure"}
return run function pnp:shop/locked_key with storage pnp:board lk
