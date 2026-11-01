scoreboard players set @s pnp.rspd 2
scoreboard players operation #rs pnp.tmp = @s pnp.stack
scoreboard players set #spb pnp.tmp 0
$execute if data storage pnp:cards rcat.r$(r).mining as @e[type=item_display,tag=pnp.sp.miner,distance=..64] if score @s pnp.stack = #rs pnp.tmp run scoreboard players set #spb pnp.tmp 2
$execute if data storage pnp:cards rcat.r$(r).lumber as @e[type=item_display,tag=pnp.sp.lumberjack,distance=..64] if score @s pnp.stack = #rs pnp.tmp run scoreboard players set #spb pnp.tmp 2
$execute if data storage pnp:cards rcat.r$(r).farming as @e[type=item_display,tag=pnp.sp.farmer,distance=..64] if score @s pnp.stack = #rs pnp.tmp run scoreboard players set #spb pnp.tmp 2
$execute if data storage pnp:cards rcat.r$(r).husbandry as @e[type=item_display,tag=pnp.sp.shepherd,distance=..64] if score @s pnp.stack = #rs pnp.tmp run scoreboard players set #spb pnp.tmp 2
$execute if data storage pnp:cards rcat.r$(r).fishing as @e[type=item_display,tag=pnp.sp.fisher,distance=..64] if score @s pnp.stack = #rs pnp.tmp run scoreboard players set #spb pnp.tmp 2
$execute if data storage pnp:cards rcat.r$(r).smithing as @e[type=item_display,tag=pnp.sp.smith,distance=..64] if score @s pnp.stack = #rs pnp.tmp run scoreboard players set #spb pnp.tmp 2
$execute if data storage pnp:cards rcat.r$(r).smelting as @e[type=item_display,tag=pnp.sp.smith,distance=..64] if score @s pnp.stack = #rs pnp.tmp run scoreboard players set #spb pnp.tmp 2
$execute if data storage pnp:cards rcat.r$(r).crafting as @e[type=item_display,tag=pnp.sp.builder,distance=..64] if score @s pnp.stack = #rs pnp.tmp run scoreboard players set #spb pnp.tmp 2
$execute if data storage pnp:cards rcat.r$(r).explore as @e[type=item_display,tag=pnp.sp.explorer,distance=..64] if score @s pnp.stack = #rs pnp.tmp run scoreboard players set #spb pnp.tmp 2
scoreboard players operation @s pnp.rspd += #spb pnp.tmp
scoreboard players set #spb pnp.tmp 0
execute as @e[type=item_display,tag=pnp.tal.clock,distance=..64] if score @s pnp.stack = #rs pnp.tmp run scoreboard players set #spb pnp.tmp 1
$execute if data storage pnp:cards rcat.r$(r).explore as @e[type=item_display,tag=pnp.tal.compass,distance=..64] if score @s pnp.stack = #rs pnp.tmp run scoreboard players set #spb pnp.tmp 2
scoreboard players operation @s pnp.rspd += #spb pnp.tmp
scoreboard players set #spb pnp.tmp 0
execute as @e[type=item_display,tag=pnp.lv3,distance=..64] if score @s pnp.stack = #rs pnp.tmp run scoreboard players set #spb pnp.tmp 1
execute as @e[type=item_display,tag=pnp.lv5,distance=..64] if score @s pnp.stack = #rs pnp.tmp run scoreboard players set #spb pnp.tmp 2
scoreboard players operation @s pnp.rspd += #spb pnp.tmp
scoreboard players set #spf pnp.tmp 0
execute as @e[type=item_display,tag=pnp.c.villager,distance=..64,scores={pnp.efat=1..}] if score @s pnp.stack = #rs pnp.tmp run scoreboard players set #spf pnp.tmp 1
execute if score #spf pnp.tmp matches 1 if score @s pnp.rspd matches 2.. run scoreboard players remove @s pnp.rspd 1
