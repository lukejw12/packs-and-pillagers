scoreboard players set #rc pnp.ids 0
execute in minecraft:overworld store result score #dt pnp.tmp run time query time
scoreboard players operation #day pnp.tmp = #dt pnp.tmp
scoreboard players operation #day pnp.tmp /= #24000 pnp.tmp
scoreboard players operation #dt pnp.tmp %= #24000 pnp.tmp
scoreboard players operation #dm1 pnp.tmp = #day pnp.tmp
scoreboard players remove #dm1 pnp.tmp 1
execute if score #lastsup pnp.ids > #day pnp.tmp run scoreboard players operation #lastsup pnp.ids = #day pnp.tmp
execute if score #lastdawn pnp.ids > #day pnp.tmp run scoreboard players operation #lastdawn pnp.ids = #day pnp.tmp
execute if score #lastwarn pnp.ids > #day pnp.tmp run scoreboard players operation #lastwarn pnp.ids = #day pnp.tmp
execute if score #lastraid pnp.ids > #day pnp.tmp run scoreboard players operation #lastraid pnp.ids = #day pnp.tmp
execute unless score #lastraid pnp.ids matches -2147483648.. run function pnp:raid/init
scoreboard players operation #d3 pnp.tmp = #day pnp.tmp
scoreboard players operation #d3 pnp.tmp %= #3 pnp.tmp
execute if score #dt pnp.tmp matches 13000..22999 as @a[scores={pnp.plot=2}] at @s run function pnp:raid/due
execute as @a[scores={pnp.raid=1..}] run function pnp:raid/check
execute if score #day pnp.tmp matches 1.. as @a[scores={pnp.plot=2}] unless score @s pnp.raid matches 1.. run function pnp:raid/patrol_roll
function pnp:supper/clock
execute as @e[type=item_display,tag=pnp.c.villager,tag=!pnp.named] run function pnp:villager/name
execute as @e[type=item_display,tag=pnp.c.wandering_trader] run function pnp:trader/life
execute if score #day pnp.tmp matches 1.. if score #dt pnp.tmp matches 1000..11000 as @a[scores={pnp.plot=2}] run function pnp:trader/roll
execute as @a[scores={pnp.plot=2..3}] run function pnp:vanilla/check
execute as @e[type=item_display,tag=pnp.k.idea,tag=!pnp.revealed,tag=!pnp.ihid] run function pnp:idea/hide
execute as @e[type=item_display,tag=pnp.c.villager,tag=!pnp.v7] at @s run function pnp:villager/recalculate
execute as @e[type=item_display,tag=pnp.sp.cleric] at @s run function pnp:villager/cleric/tick
execute as @e[type=item_display,tag=pnp.sp.scholar] at @s run function pnp:villager/scholar/tick
execute as @a[scores={pnp.plot=2}] at @s if dimension minecraft:overworld run function pnp:carpenter/roll
tag @e[type=item_display,tag=pnp.c.skeleton,tag=!pnp.ranged] add pnp.ranged
tag @e[type=item_display,tag=pnp.c.pillager,tag=!pnp.ranged] add pnp.ranged
execute in minecraft:overworld run kill @e[type=item_display,tag=pnp.card_part,distance=0..]
function pnp:night/clock
execute as @e[type=item_display,tag=pnp.k.enemy,tag=!pnp.rt] run function pnp:fight/tag_role
execute as @e[type=item_display,tag=pnp.k.gate] unless score @s pnp.life matches 0.. run scoreboard players set @s pnp.life 3
execute as @a[tag=!pnp.in_board,scores={pnp.plot=2..3}] at @s run function pnp:gateway/scan_player
tag @e[type=item_display,tag=pnp.k.unit,tag=!pnp.slotable] add pnp.slotable
tag @e[type=item_display,tag=pnp.k.enemy,tag=!pnp.slotable] add pnp.slotable
execute as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.c.villager,tag=!pnp.v7] at @s run function pnp:villager/recalculate
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held] at @s if block ~ ~ ~ #pnp:table run tp @s ~ 65.01 ~
execute as @e[type=item_display,tag=pnp.infight] at @s run function pnp:fight_box/orphan
execute as @e[type=item_display,tag=pnp.k.shop,tag=!pnp.held,tag=!pnp.c.shop_side] at @s unless block ~ 64 ~ #pnp:felt run function pnp:board/nudge_shop
execute as @e[type=item_display,tag=pnp.k.sell,tag=!pnp.held] at @s unless block ~ 64 ~ #pnp:felt run function pnp:board/nudge_shop
execute as @e[type=item_display,tag=pnp.k.quest] at @s run function pnp:quest/tick
execute as @e[type=item_display,tag=pnp.c.baby_villager] at @s run function pnp:villager/baby/tick
scoreboard players add #qref pnp.ids 1
execute if score #qref pnp.ids matches 5.. as @a[tag=pnp.in_board,scores={pnp.plot=2..3}] run function pnp:quest/ensure
execute if score #qref pnp.ids matches 5.. run scoreboard players set #qref pnp.ids 0
execute as @e[type=item_display,tag=pnp.held,tag=!pnp.cg_carry] at @s run function pnp:board/sweep_held_cards
execute as @e[type=item_display,tag=pnp.phead] at @s run function pnp:multiplayer/head/visibility
execute as @a[tag=pnp.in_board] unless score @s pnp.visit matches 1.. unless score @s pnp.tut matches 1.. at @s run function pnp:tutorial/start
execute as @a[tag=pnp.in_board,scores={pnp.tut=1..9}] unless score @s pnp.visit matches 1.. at @s run function pnp:tutorial/step
execute as @a[scores={pnp.skip=1..}] at @s run function pnp:tutorial/skip
execute if score #coop pnp.ids matches 1.. as @a[scores={pnp.pid=1..}] unless score @s pnp.pid = #coop pnp.ids unless score @s pnp.plot matches 3 run function pnp:coop/join_member
execute unless score #coop pnp.ids matches 1.. as @a[scores={pnp.plot=3}] run function pnp:coop/leave_member
execute as @a[tag=pnp.in_board] unless score @s pnp.tool matches 1 at @s run function pnp:wrench/sync_self
execute as @a[tag=pnp.in_board,scores={pnp.tool=1}] at @s run function pnp:wrench/port/heal
execute as @e[type=item_display,tag=pnp.c.copper_golem,tag=pnp.held,scores={pnp.cgn=1..}] run function pnp:copper_golem/held
execute as @e[type=item_display,tag=pnp.cg_carry] run function pnp:copper_golem/orphans
execute as @a[scores={pnp.qfish=1..}] run function pnp:quest/world/fish
execute as @a[scores={pnp.qkill=1..}] run function pnp:quest/world/kill
execute as @a[scores={pnp.qmine=1..}] run function pnp:quest/world/mine
execute as @a[tag=!pnp.in_board] at @s unless score @s pnp.invil matches 1 if predicate pnp:in_village run function pnp:quest/world/village
execute as @a[scores={pnp.invil=1}] at @s unless predicate pnp:in_village run scoreboard players set @s pnp.invil 0
execute as @a[scores={pnp.plot=2..3}] unless score @s pnp.omen matches 1 if predicate pnp:bad_omen run function pnp:raid/omen
execute as @a[scores={pnp.omen=1}] unless predicate pnp:bad_omen run scoreboard players set @s pnp.omen 0
execute as @a[scores={pnp.invs=1},tag=!pnp.in_board] at @s unless dimension pnp:board run function pnp:inventory/restore
execute as @e[tag=pnp.board_ent,tag=!pnp.port,tag=!pnp.traveler,tag=!pnp.fxtrig,tag=!pnp.fxblind] run function pnp:board/claim_orphans
execute as @e[type=block_display,tag=pnp.bar] unless function pnp:board/recipe/check_bar run kill @s
execute as @e[type=item_display,tag=pnp.c.copper_golem] on passengers if entity @s[tag=pnp.licon] run kill @s
execute as @e[type=item_display,tag=pnp.c.copper_golem] on passengers if entity @s[tag=pnp.lstat] run kill @s
execute as @e[type=item_display,tag=pnp.c.barrel,tag=!pnp.held] unless function pnp:logistics/has_parts run function pnp:logistics/label/update
execute as @e[type=item_display,tag=pnp.c.barrel,tag=!pnp.held] unless function pnp:logistics/has_icon run function pnp:logistics/label/update
execute as @e[type=item_display,tag=pnp.card,scores={pnp.idx=0}] at @s if dimension pnp:board unless block ~ ~-0.5 ~ #pnp:table if function pnp:board/can_rescue run function pnp:board/rescue_cards
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.card_new] unless score @s pnp.uid matches 1.. at @s run function pnp:card/repair
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.v2] at @s run function pnp:card/upgrade
execute as @e[type=item_display,tag=pnp.card,tag=pnp.v2,tag=!pnp.v4] run function pnp:card/upgrade/tier_3
execute in pnp:board run kill @e[tag=pnp.card_part,predicate=!pnp:riding,x=0,y=0,z=0,distance=0..]
execute as @a[scores={pnp.plot=2}] at @s run function pnp:board/size/grow_from_villagers
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.v6,limit=16] run function pnp:card/title/fit
execute as @e[type=item_display,tag=pnp.c.waypoint] run function pnp:waystone/name_sync
execute as @e[type=marker,tag=pnp.wsm] at @s unless entity @e[type=interaction,tag=pnp.wsi,distance=..1.2] run function pnp:waystone/add_interaction
execute as @e[type=item_display,tag=pnp.c.redstone_cube_ally] at @s run function pnp:redstone_caves/ally/check
execute as @a[tag=pnp.in_board] run function pnp:quest_board/tick_player
execute if score #mode pnp.ids matches 2 unless score #coop pnp.ids matches 1.. as @a[tag=pnp.mhost,scores={pnp.plot=2},limit=1] run function pnp:coop/share
execute if score #mode pnp.ids matches 4 run function pnp:pvp/portal/update_all
execute as @e[type=item_display,tag=pnp.c.war_horn] run function pnp:card/remove
function pnp:pvp/tick
execute as @e[type=item_display,tag=pnp.c.redstone_monstrosity,tag=!pnp.rmin] at @s run function pnp:redstone_caves/boss_arrive
