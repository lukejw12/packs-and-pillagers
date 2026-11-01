execute if entity @s[tag=pnp.c.wandering_trader] run return 0
execute store result score #lkp pnp.tmp run data get entity @s Pos[0]
scoreboard players add #lkp pnp.tmp 64
scoreboard players operation #lkp pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board lk.p int 1 run scoreboard players get #lkp pnp.tmp
execute if entity @s[tag=pnp.c.shop_humble] run data modify storage pnp:board lk merge value {k:"humble",nx:"Farm Pack"}
execute if entity @s[tag=pnp.c.shop_farm] run data modify storage pnp:board lk merge value {k:"farm",nx:"Adventure Pack"}
execute if entity @s[tag=pnp.c.shop_adventure] run data modify storage pnp:board lk merge value {k:"adventure",nx:"Combat and Caving Packs"}
execute if entity @s[tag=pnp.c.shop_combat] run data modify storage pnp:board lk merge value {k:"combat",nx:""}
execute if entity @s[tag=pnp.c.shop_caving] run data modify storage pnp:board lk merge value {k:"caving",nx:""}
function pnp:shop/count_for_player with storage pnp:board lk
execute as @e[type=item_display,tag=pnp.k.shop,distance=..40] at @s run function pnp:shop/label
