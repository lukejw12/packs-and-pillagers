execute if function pnp:quest/route run return 1
execute if entity @e[type=item_display,tag=pnp.held,tag=pnp.c.tnt,distance=..64] if function pnp:fight_box/tnt_route run return 1
execute if function pnp:fight_box/route_fight run return 1
scoreboard players operation #uid pnp.tmp = @s pnp.hover
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp run tag @s add pnp.dt
execute as @e[type=item_display,tag=pnp.dt,limit=1] run function pnp:board/hover/target
scoreboard players set #hsize pnp.tmp 0
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run scoreboard players add #hsize pnp.tmp 1
scoreboard players set #hkind pnp.tmp 0
execute as @e[type=item_display,tag=pnp.held,tag=pnp.k.unit,distance=..64] if score @s pnp.stack = #hsid pnp.tmp if score @s pnp.idx matches 0 run scoreboard players set #hkind pnp.tmp 1
execute as @e[type=item_display,tag=pnp.held,tag=pnp.k.weapon,distance=..64] if score @s pnp.stack = #hsid pnp.tmp if score @s pnp.idx matches 0 run scoreboard players set #hkind pnp.tmp 2
execute as @e[type=item_display,tag=pnp.held,tag=pnp.k.food,distance=..64] if score @s pnp.stack = #hsid pnp.tmp if score @s pnp.idx matches 0 run scoreboard players set #hkind pnp.tmp 3
execute as @e[type=item_display,tag=pnp.held,tag=pnp.c.wandering_trader,distance=..64] if score @s pnp.stack = #hsid pnp.tmp if entity @e[type=item_display,tag=pnp.dt] run return run function pnp:board/drop/free_trader
execute if score #hkind pnp.tmp matches 1 as @e[type=item_display,tag=pnp.dt,tag=pnp.c.creeper,limit=1] at @s run function pnp:fight_box/creeper_pop
execute if entity @e[type=item_display,tag=pnp.dt,tag=pnp.k.enemy] run return run function pnp:board/drop/onto_enemy
execute if entity @e[type=item_display,tag=pnp.dt,tag=pnp.k.shop] run return run function pnp:board/drop/buy
execute if entity @e[type=item_display,tag=pnp.dt,tag=pnp.k.sell] run return run function pnp:board/drop/sell
execute if score #hsize pnp.tmp matches 1 if score #hkind pnp.tmp matches 3 if entity @e[type=item_display,tag=pnp.dt,tag=pnp.k.unit] run return run function pnp:board/drop/heal
execute if score #hsize pnp.tmp matches 1 if entity @e[type=item_display,tag=pnp.dt,tag=pnp.k.unit] if function pnp:villager/try_route run return 1
execute if score #hsize pnp.tmp matches 1 if score #hkind pnp.tmp matches 2 if entity @e[type=item_display,tag=pnp.dt,tag=pnp.k.unit] run return run function pnp:board/drop/equip
scoreboard players set #tbarrel pnp.tmp 0
execute as @e[type=item_display,tag=pnp.c.barrel,distance=..64] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx matches 0 run scoreboard players set #tbarrel pnp.tmp 1
execute if score #tbarrel pnp.tmp matches 1 run return run function pnp:logistics/drop/barrel
scoreboard players set #tac pnp.tmp 0
execute as @e[type=item_display,tag=pnp.c.autocrafter,distance=..64] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx matches 0 run scoreboard players set #tac pnp.tmp 1
execute if score #tac pnp.tmp matches 1 run return run function pnp:logistics/drop/autocrafter
scoreboard players set #thop pnp.tmp 0
execute as @e[type=item_display,tag=pnp.c.hopper,distance=..64] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx matches 0 run scoreboard players set #thop pnp.tmp 1
execute if score #thop pnp.tmp matches 1 run return run function pnp:logistics/drop/hopper
scoreboard players set #tend pnp.tmp 0
execute as @e[type=item_display,tag=pnp.c.bundle,distance=..64] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx matches 0 run scoreboard players set #tend pnp.tmp 1
execute if score #tend pnp.tmp matches 1 run return run function pnp:board/drop/export
scoreboard players set #tmarket pnp.tmp 0
execute as @e[type=item_display,tag=pnp.c.market,distance=..64] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx matches 0 run scoreboard players set #tmarket pnp.tmp 1
execute if score #tmarket pnp.tmp matches 1 run function pnp:board/drop/sell
