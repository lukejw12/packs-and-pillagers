execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s if function pnp:shop/locked run return run function pnp:shop/refuse
scoreboard players set #route pnp.tmp 1
scoreboard players set #given pnp.tmp 0
execute if entity @e[type=item_display,tag=pnp.dt,tag=pnp.goldshop,limit=1] as @e[type=item_display,tag=pnp.held,tag=pnp.c.gold_ingot,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:board/drop/take_purchase
execute unless entity @e[type=item_display,tag=pnp.dt,tag=pnp.goldshop,limit=1] as @e[type=item_display,tag=pnp.held,tag=pnp.c.emerald,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:board/drop/take_purchase
execute unless entity @e[type=item_display,tag=pnp.dt,tag=pnp.goldshop,limit=1] as @e[type=item_display,tag=pnp.held,tag=pnp.c.emerald_block,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:board/drop/take_purchase_block
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:board/drop/release
scoreboard players operation #csid pnp.tmp = #hsid pnp.tmp
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s positioned ~ 65.01 ~1.3 run function pnp:board/stack/compact
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s run function pnp:shop/pay
