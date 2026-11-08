execute if entity @s[tag=pnp.c.villager] run scoreboard players set @s pnp.hpb 5
execute if entity @s[tag=pnp.c.villager] run scoreboard players set @s pnp.atkb 1
execute unless score @s pnp.hpb matches 1.. if score @s pnp.hpmax matches 1.. run scoreboard players operation @s pnp.hpb = @s pnp.hpmax
execute unless score @s pnp.hpb matches 1.. run scoreboard players operation @s pnp.hpb = @s pnp.hp
execute unless score @s pnp.hpb matches 1.. run scoreboard players set @s pnp.hpb 5
execute unless score @s pnp.atkb matches 0.. run scoreboard players operation @s pnp.atkb = @s pnp.atk
execute if data entity @s item.components."minecraft:custom_data".weapon run function pnp:villager/migrate_weapon
execute unless score @s pnp.vlvl matches 1.. run scoreboard players set @s pnp.vlvl 1
scoreboard players operation #oldmax pnp.tmp = @s pnp.hpmax
execute unless score #oldmax pnp.tmp matches 1.. run scoreboard players set #oldmax pnp.tmp 5
tag @s remove pnp.sp.swordsman
tag @s remove pnp.sp.miner
tag @s remove pnp.sp.lumberjack
tag @s remove pnp.sp.farmer
tag @s remove pnp.sp.shepherd
tag @s remove pnp.sp.fisher
tag @s remove pnp.sp.smith
tag @s remove pnp.sp.cleric
tag @s remove pnp.sp.scholar
tag @s remove pnp.sp.explorer
tag @s remove pnp.sp.builder
tag @s remove pnp.sp.archer
tag @s remove pnp.sp.guard
tag @s remove pnp.sp.brute
tag @s remove pnp.sp.lancer
tag @s remove pnp.tal.totem
tag @s remove pnp.tal.blaze_charm
tag @s remove pnp.tal.horse
tag @s remove pnp.ench_fp
tag @s remove pnp.wfs
execute if data entity @s item.components."minecraft:custom_data".eq{t:"wildfire_shield"} run tag @s add pnp.wfs
execute if data entity @s item.components."minecraft:custom_data".eq.ae{k:"f"} run tag @s add pnp.ench_fp
tag @s remove pnp.tal.gilded_charm
tag @s remove pnp.tal.clock
tag @s remove pnp.tal.compass
tag @s remove pnp.tal.rabbit_foot
tag @s remove pnp.tal.bone
tag @s remove pnp.tal.prismarine_shard
tag @s remove pnp.tal.echo_shard
tag @s remove pnp.tal.pumpkin
tag @s remove pnp.ranged
tag @s remove pnp.guard
tag @s remove pnp.mace
tag @s remove pnp.staff
tag @s remove pnp.fist
tag @s remove pnp.helm_rm
tag @s remove pnp.reach
tag @s remove pnp.pierce
tag @s remove pnp.lv3
tag @s remove pnp.lv5
execute if data entity @s item.components."minecraft:custom_data".eq{t:"wooden_sword"} run tag @s add pnp.sp.swordsman
execute if data entity @s item.components."minecraft:custom_data".eq{t:"stone_sword"} run tag @s add pnp.sp.swordsman
execute if data entity @s item.components."minecraft:custom_data".eq{t:"iron_sword"} run tag @s add pnp.sp.swordsman
execute if data entity @s item.components."minecraft:custom_data".eq{t:"diamond_sword"} run tag @s add pnp.sp.swordsman
execute if data entity @s item.components."minecraft:custom_data".eq{t:"stone_pickaxe"} run tag @s add pnp.sp.miner
execute if data entity @s item.components."minecraft:custom_data".eq{t:"iron_pickaxe"} run tag @s add pnp.sp.miner
execute if data entity @s item.components."minecraft:custom_data".eq{t:"stone_axe"} run tag @s add pnp.sp.lumberjack
execute if data entity @s item.components."minecraft:custom_data".eq{t:"iron_axe"} run tag @s add pnp.sp.lumberjack
execute if data entity @s item.components."minecraft:custom_data".eq{t:"stone_hoe"} run tag @s add pnp.sp.farmer
execute if data entity @s item.components."minecraft:custom_data".eq{t:"shears"} run tag @s add pnp.sp.shepherd
execute if data entity @s item.components."minecraft:custom_data".eq{t:"fishing_rod"} run tag @s add pnp.sp.fisher
execute if data entity @s item.components."minecraft:custom_data".eq{t:"bow"} run tag @s add pnp.sp.archer
execute if data entity @s item.components."minecraft:custom_data".eq{t:"crossbow"} run tag @s add pnp.sp.archer
execute if data entity @s item.components."minecraft:custom_data".eq{t:"trident"} run tag @s add pnp.sp.archer
execute if data entity @s item.components."minecraft:custom_data".eq{t:"shield"} run tag @s add pnp.sp.guard
execute if data entity @s item.components."minecraft:custom_data".eq{t:"mace"} run tag @s add pnp.sp.brute
execute if data entity @s item.components."minecraft:custom_data".eq{t:"spear"} run tag @s add pnp.sp.lancer
execute if data entity @s item.components."minecraft:custom_data".eq{t:"bow"} run tag @s add pnp.ranged
execute if data entity @s item.components."minecraft:custom_data".eq{t:"crossbow"} run tag @s add pnp.ranged
execute if data entity @s item.components."minecraft:custom_data".eq{t:"trident"} run tag @s add pnp.ranged
execute if data entity @s item.components."minecraft:custom_data".eq{t:"shield"} run tag @s add pnp.guard
execute if data entity @s item.components."minecraft:custom_data".eq{t:"mace"} run tag @s add pnp.mace
execute if data entity @s item.components."minecraft:custom_data".eq{t:"evocation_staff"} run tag @s add pnp.staff
execute if data entity @s item.components."minecraft:custom_data".eq{t:"redstone_awakened"} run tag @s add pnp.fist
execute if data entity @s item.components."minecraft:custom_data".eq{t:"spear"} run tag @s add pnp.reach
execute if data entity @s item.components."minecraft:custom_data".eq{t:"crossbow"} run tag @s add pnp.pierce
execute if data entity @s item.components."minecraft:custom_data"{prof:"minecraft:toolsmith"} run tag @s add pnp.sp.smith
execute if data entity @s item.components."minecraft:custom_data"{prof:"minecraft:armorer"} run tag @s add pnp.sp.smith
execute if data entity @s item.components."minecraft:custom_data"{prof:"minecraft:weaponsmith"} run tag @s add pnp.sp.smith
execute if data entity @s item.components."minecraft:custom_data"{prof:"minecraft:farmer"} run tag @s add pnp.sp.farmer
execute if data entity @s item.components."minecraft:custom_data"{prof:"minecraft:fisherman"} run tag @s add pnp.sp.fisher
execute if data entity @s item.components."minecraft:custom_data"{prof:"minecraft:shepherd"} run tag @s add pnp.sp.shepherd
execute if data entity @s item.components."minecraft:custom_data"{prof:"minecraft:leatherworker"} run tag @s add pnp.sp.shepherd
execute if data entity @s item.components."minecraft:custom_data"{prof:"minecraft:butcher"} run tag @s add pnp.sp.shepherd
execute if data entity @s item.components."minecraft:custom_data"{prof:"minecraft:cleric"} run tag @s add pnp.sp.cleric
execute if data entity @s item.components."minecraft:custom_data"{prof:"minecraft:librarian"} run tag @s add pnp.sp.scholar
execute if data entity @s item.components."minecraft:custom_data"{prof:"minecraft:cartographer"} run tag @s add pnp.sp.explorer
execute if data entity @s item.components."minecraft:custom_data"{prof:"minecraft:mason"} run tag @s add pnp.sp.builder
execute if data entity @s item.components."minecraft:custom_data".eq{s:"totem"} run tag @s add pnp.tal.totem
execute if data entity @s item.components."minecraft:custom_data".eq{s:"blaze_charm"} run tag @s add pnp.tal.blaze_charm
execute if data entity @s item.components."minecraft:custom_data".eq{s:"horse"} run tag @s add pnp.tal.horse
execute if data entity @s item.components."minecraft:custom_data".eq{s:"gilded_charm"} run tag @s add pnp.tal.gilded_charm
execute if data entity @s item.components."minecraft:custom_data".eq{s:"clock"} run tag @s add pnp.tal.clock
execute if data entity @s item.components."minecraft:custom_data".eq{s:"compass"} run tag @s add pnp.tal.compass
execute if data entity @s item.components."minecraft:custom_data".eq{s:"rabbit_foot"} run tag @s add pnp.tal.rabbit_foot
execute if data entity @s item.components."minecraft:custom_data".eq{s:"bone"} run tag @s add pnp.tal.bone
execute if data entity @s item.components."minecraft:custom_data".eq{s:"prismarine_shard"} run tag @s add pnp.tal.prismarine_shard
execute if data entity @s item.components."minecraft:custom_data".eq{s:"echo_shard"} run tag @s add pnp.tal.echo_shard
execute if data entity @s item.components."minecraft:custom_data".eq{s:"pumpkin"} run tag @s add pnp.tal.pumpkin
scoreboard players set @s pnp.acd 20
tag @s remove pnp.w_trident
execute if data entity @s item.components."minecraft:custom_data".eq{t:"trident"} run tag @s add pnp.w_trident
execute if data entity @s item.components."minecraft:custom_data".eq{t:"bow"} run scoreboard players set @s pnp.acd 16
execute if data entity @s item.components."minecraft:custom_data".eq{t:"crossbow"} run scoreboard players set @s pnp.acd 28
execute if data entity @s item.components."minecraft:custom_data".eq{t:"trident"} run scoreboard players set @s pnp.acd 24
execute if data entity @s item.components."minecraft:custom_data".eq{t:"mace"} run scoreboard players set @s pnp.acd 30
function pnp:villager/gear/addon
scoreboard players operation @s pnp.hpmax = @s pnp.hpb
execute if data entity @s item.components."minecraft:custom_data".eq{a:"leather_tunic"} run scoreboard players add @s pnp.hpmax 2
execute if data entity @s item.components."minecraft:custom_data".eq{a:"iron_chestplate"} run scoreboard players add @s pnp.hpmax 4
execute if data entity @s item.components."minecraft:custom_data".eq{a:"diamond_chestplate"} run scoreboard players add @s pnp.hpmax 6
execute if data entity @s item.components."minecraft:custom_data".eq{a:"monstrosity_helmet"} run scoreboard players add @s pnp.hpmax 4
execute if data entity @s item.components."minecraft:custom_data".eq{a:"monstrosity_helmet"} run tag @s add pnp.helm_rm
scoreboard players operation @s pnp.hpmax += #ghp pnp.tmp
scoreboard players operation #lb pnp.tmp = @s pnp.vlvl
scoreboard players remove #lb pnp.tmp 1
scoreboard players operation @s pnp.hpmax += #lb pnp.tmp
scoreboard players set #enh pnp.tmp 0
execute if data entity @s item.components."minecraft:custom_data".eq.ae{k:"p"} store result score #enh pnp.tmp run data get entity @s item.components."minecraft:custom_data".eq.ae.l
scoreboard players operation @s pnp.hpmax += #enh pnp.tmp
execute if score @s pnp.vlvl matches 3.. run tag @s add pnp.lv3
execute if score @s pnp.vlvl matches 5.. run tag @s add pnp.lv5
scoreboard players operation #atkb pnp.tmp = @s pnp.atkb
execute if data entity @s item.components."minecraft:custom_data".eq{t:"wooden_sword"} run scoreboard players add #atkb pnp.tmp 1
execute if data entity @s item.components."minecraft:custom_data".eq{t:"stone_sword"} run scoreboard players add #atkb pnp.tmp 2
execute if data entity @s item.components."minecraft:custom_data".eq{t:"iron_sword"} run scoreboard players add #atkb pnp.tmp 3
execute if data entity @s item.components."minecraft:custom_data".eq{t:"diamond_sword"} run scoreboard players add #atkb pnp.tmp 5
execute if data entity @s item.components."minecraft:custom_data".eq{t:"stone_axe"} run scoreboard players add #atkb pnp.tmp 1
execute if data entity @s item.components."minecraft:custom_data".eq{t:"iron_axe"} run scoreboard players add #atkb pnp.tmp 2
execute if data entity @s item.components."minecraft:custom_data".eq{t:"bow"} run scoreboard players add #atkb pnp.tmp 2
execute if data entity @s item.components."minecraft:custom_data".eq{t:"crossbow"} run scoreboard players add #atkb pnp.tmp 3
execute if data entity @s item.components."minecraft:custom_data".eq{t:"trident"} run scoreboard players add #atkb pnp.tmp 4
execute if data entity @s item.components."minecraft:custom_data".eq{t:"mace"} run scoreboard players add #atkb pnp.tmp 5
execute if data entity @s item.components."minecraft:custom_data".eq{t:"spear"} run scoreboard players add #atkb pnp.tmp 3
execute if data entity @s item.components."minecraft:custom_data".eq{t:"redstone_awakened"} run scoreboard players add #atkb pnp.tmp 3
scoreboard players operation #atkb pnp.tmp += #gatk pnp.tmp
execute if entity @s[tag=pnp.sp.swordsman] run scoreboard players add #atkb pnp.tmp 1
execute if entity @s[tag=pnp.sp.swordsman] run scoreboard players add @s pnp.hpmax 2
execute if entity @s[tag=pnp.wellfed] run scoreboard players add #atkb pnp.tmp 1
execute if entity @s[tag=pnp.hungry] if score #atkb pnp.tmp matches 1.. run scoreboard players remove #atkb pnp.tmp 1
execute store result score #ena pnp.tmp run data get entity @s item.components."minecraft:custom_data".eq.te.l
scoreboard players operation #atkb pnp.tmp += #ena pnp.tmp
scoreboard players operation @s pnp.atk = #atkb pnp.tmp
scoreboard players operation #dl pnp.tmp = @s pnp.hpmax
scoreboard players operation #dl pnp.tmp -= #oldmax pnp.tmp
execute if score #dl pnp.tmp matches 1.. run scoreboard players operation @s pnp.hp += #dl pnp.tmp
execute if score @s pnp.hp > @s pnp.hpmax run scoreboard players operation @s pnp.hp = @s pnp.hpmax
function pnp:card/label/stats
execute on passengers if entity @s[tag=pnp.wpn_icon] run kill @s
execute if data entity @s item.components."minecraft:custom_data".eq.t at @s run function pnp:villager/icon
execute on passengers if entity @s[tag=pnp.badge] run kill @s
execute if entity @s[tag=pnp.c.villager] at @s run function pnp:villager/badge
tag @s add pnp.v6
tag @s add pnp.v7
