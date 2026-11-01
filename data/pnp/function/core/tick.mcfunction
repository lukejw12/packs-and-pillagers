execute store result score #ptool pnp.ids if entity @a[scores={pnp.tool=1..}]
function pnp:speed/check
execute if score #pover pnp.ids matches 1 run function pnp:speed/over_limit/tick
execute store result score #g4 pnp.tmp run time query gametime
scoreboard players operation #g4 pnp.tmp %= #4 pnp.tmp
execute as @a run scoreboard players operation @s pnp.tpid = @s pnp.pid
execute if score #coop pnp.ids matches 1.. as @a[scores={pnp.plot=3}] run scoreboard players operation @s pnp.tpid = #coop pnp.ids
execute as @a run scoreboard players operation @s pnp.here = @s pnp.tpid
execute as @a[tag=pnp.in_board] run function pnp:coop/here
tag @a remove pnp.coophost
execute if score #coop pnp.ids matches 1.. as @a if score @s pnp.pid = #coop pnp.ids run tag @s add pnp.coophost
scoreboard players add #gt pnp.ids 1
scoreboard players operation #g5 pnp.tmp = #gt pnp.ids
scoreboard players operation #g5 pnp.tmp %= #5 pnp.tmp
scoreboard players operation #g2 pnp.tmp = #gt pnp.ids
scoreboard players operation #g2 pnp.tmp %= #2 pnp.tmp
tag @e[type=item_display,tag=pnp.k.enemy] add pnp.slow
tag @e[type=item_display,tag=pnp.k.unit] add pnp.slow
execute as @a[tag=pnp.in_board] at @s run tag @e[type=item_display,tag=pnp.slow,distance=..40] remove pnp.slow
execute as @a unless score @s pnp.pid matches 1.. run function pnp:player/init
execute as @a[scores={pnp.plot=..1}] run function pnp:board/plot/try_build
execute as @a[scores={pnp.left=1..}] run function pnp:player/rejoin
execute as @a[scores={pnp.use=1..}] at @s run function pnp:player/use_board_button
execute as @a[scores={pnp.plot=2..3}] run function pnp:world/harvest
execute as @a[scores={pnp.plot=2}] unless score @s pnp.gift matches 5.. run function pnp:board/plot/give_gift_5
execute as @a[scores={pnp.plot=2}] unless score @s pnp.gift matches 6.. run function pnp:board/plot/give_gift_6
execute as @a[scores={pnp.plot=2}] unless score @s pnp.gift matches 7.. run function pnp:board/plot/give_gift_7
execute as @a[tag=pnp.in_board] at @s run function pnp:board/tick_player

execute as @e[type=item_display,tag=pnp.card_new] at @s run function pnp:card/repair
execute unless score #psup pnp.ids matches 1.. unless score #paused pnp.ids matches 1 run function pnp:core/game_tick
execute unless score #psup pnp.ids matches 1.. if score #pstate pnp.ids matches 2.. run function pnp:core/game_tick
execute unless score #psup pnp.ids matches 1.. if score #pstate pnp.ids matches 4.. run function pnp:core/game_tick
execute unless score #psup pnp.ids matches 1.. if score #pstate pnp.ids matches 4.. run function pnp:core/game_tick
execute unless score #psup pnp.ids matches 1.. if score #pstate pnp.ids matches 1.. in minecraft:overworld run time add 1
execute unless score #psup pnp.ids matches 1.. if score #pstate pnp.ids matches 2.. in minecraft:overworld run time add 2
execute unless score #psup pnp.ids matches 1.. if score #pstate pnp.ids matches 4.. in minecraft:overworld run time add 4
execute as @e[type=item_display,tag=pnp.card,scores={pnp.pop=1..}] at @s run function pnp:card/pop/tick
execute as @e[type=text_display,tag=pnp.dmg] at @s run function pnp:fight/damage_text_tick
execute as @a[scores={pnp.deaths=1..}] at @s run function pnp:grave/died
execute as @e[type=marker,tag=pnp.wsm] at @s unless block ~ ~ ~ minecraft:lodestone run function pnp:waystone/broken
execute as @e[type=item] if items entity @s contents minecraft:carrot_on_a_stick[minecraft:custom_data~{pnp:{wrench:1b}}] run kill @s
execute as @a[tag=pnp.in_board] run function pnp:inventory/wrench_guard
execute as @a[tag=!pnp.in_board] if items entity @s container.* minecraft:carrot_on_a_stick[minecraft:custom_data~{pnp:{wrench:1b}}] run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data~{pnp:{wrench:1b}}]
execute as @e[type=item] if items entity @s contents minecraft:book[minecraft:custom_data~{pnp:{controls:1b}}] run kill @s
execute as @a[tag=!pnp.in_board] if items entity @s container.* minecraft:book[minecraft:custom_data~{pnp:{controls:1b}}] run clear @s minecraft:book[minecraft:custom_data~{pnp:{controls:1b}}]
execute as @e[type=item] if items entity @s contents *[minecraft:custom_data~{pnp:{namebook:1b}}] run kill @s
execute as @a[tag=!pnp.in_board] unless score @s pnp.rnw matches 1 if items entity @s container.* *[minecraft:custom_data~{pnp:{namebook:1b}}] run function pnp:villager/rename/clear
execute as @a[tag=pnp.dlw,tag=!pnp.in_board] at @s if loaded ~ ~ ~ run function pnp:delivery/arrive
execute as @e[type=item] if items entity @s contents minecraft:paper[minecraft:custom_data~{pnp:{grid:1b}}] run kill @s
execute as @a[tag=!pnp.in_board] if items entity @s container.* minecraft:paper[minecraft:custom_data~{pnp:{grid:1b}}] run clear @s minecraft:paper[minecraft:custom_data~{pnp:{grid:1b}}]
scoreboard players enable @a pnp.kbt
execute as @a[tag=!pnp.in_board,scores={pnp.kbt=1..}] run function pnp:controls/off_table
execute as @a[tag=!pnp.in_board,scores={pnp.ow=1..}] at @s run function pnp:board/wait_to_open
execute as @a[scores={pnp.sbw=1..}] at @s run function pnp:board/side_board/build_wait
scoreboard players enable @a pnp.notips
execute as @a[scores={pnp.notips=1}] run function pnp:tips/off
scoreboard players add #lt pnp.tmp 1
execute if score #lt pnp.tmp matches 5.. in pnp:board run function pnp:light/tick
execute if score #lt pnp.tmp matches 5.. run scoreboard players set #lt pnp.tmp 0
execute as @e[type=item] if items entity @s contents minecraft:paper[minecraft:custom_data~{pnp:{selector:1b}}] run kill @s
execute as @a[tag=!pnp.in_board] if items entity @s container.* minecraft:paper[minecraft:custom_data~{pnp:{selector:1b}}] run clear @s minecraft:paper[minecraft:custom_data~{pnp:{selector:1b}}]
execute as @a[tag=pnp.in_board,scores={pnp.sls=1..}] at @s run function pnp:selection/tick
scoreboard players add #gc pnp.tmp 1
execute if score #gc pnp.tmp matches 2.. in pnp:board as @e[type=item_display,tag=pnp.c.iron_golem,tag=!pnp.held,tag=!pnp.infight,scores={pnp.idx=0}] at @s if entity @a[tag=pnp.in_board,distance=..64] if function pnp:wander/can run function pnp:fight_box/golem_chase
execute if score #gc pnp.tmp matches 2.. run scoreboard players set #gc pnp.tmp 0
scoreboard players add #lu pnp.tmp 1
execute if score #lu pnp.tmp matches 2.. if entity @e[type=block_display,tag=pnp.link,limit=1] in pnp:board as @e[type=item_display,tag=pnp.held,scores={pnp.idx=0}] run function pnp:wrench/link/follow
execute if score #lu pnp.tmp matches 2.. run scoreboard players set #lu pnp.tmp 0
execute as @a[scores={pnp.wsn=1..}] at @s run function pnp:waystone/snap_tick
execute as @a[tag=!pnp.in_board,scores={pnp.rnu=1..}] at @s run function pnp:villager/rename/tick
execute as @e[type=interaction,tag=pnp.wsi] if data entity @s interaction run function pnp:waystone/use_interaction
function pnp:music/tick_all
function pnp:menu/tick
execute as @e[type=item] if items entity @s contents minecraft:carrot_on_a_stick[minecraft:custom_data~{pnp:{speed:1b}}] run kill @s
execute as @a[tag=!pnp.in_board] if items entity @s container.* minecraft:carrot_on_a_stick[minecraft:custom_data~{pnp:{speed:1b}}] run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data~{pnp:{speed:1b}}]
scoreboard players add #lblt pnp.ids 1
execute if score #lblt pnp.ids matches 40.. as @e[type=item_display,tag=pnp.card,tag=!pnp.slbl] at @s run function pnp:card/label/sell
execute if score #lblt pnp.ids matches 40.. as @e[type=item_display,tag=pnp.card,tag=!pnp.hlbl,scores={pnp.hp=1..}] at @s run function pnp:card/label/add
execute if score #lblt pnp.ids matches 40.. run scoreboard players set #lblt pnp.ids 0
execute as @a[scores={pnp.sanim=1..}] at @s run function pnp:supper/animation/tick
