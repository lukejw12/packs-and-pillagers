data modify storage pnp:board rt.c set from entity @s item.components."minecraft:custom_data".cgc
execute as @e[type=item_display,tag=pnp.cg_carry] if score @s pnp.cgo = #gu pnp.tmp run function pnp:copper_golem/put_one
tag @e[type=item_display,tag=pnp.cg_t] remove pnp.cg_t
scoreboard players set #left pnp.tmp 0
execute as @e[type=item_display,tag=pnp.cg_carry] if score @s pnp.cgo = #gu pnp.tmp run scoreboard players add #left pnp.tmp 1
scoreboard players operation @s pnp.cgn = #left pnp.tmp
playsound minecraft:block.barrel.close master @a[distance=..24] ~ ~ ~ 0.6 1.2
execute unless score @s pnp.hb matches 1.. run function pnp:fight/hop_start
execute if score @s pnp.cgn matches 1.. run return run function pnp:copper_golem/choose
scoreboard players set @s pnp.cgs 0
scoreboard players set @s pnp.cgt 0
