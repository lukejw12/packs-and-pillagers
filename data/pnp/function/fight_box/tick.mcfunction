scoreboard players operation #fid pnp.tmp = @s pnp.fid
tag @s add pnp.fcur
execute as @e[type=item_display,tag=pnp.infight,tag=pnp.held] if score @s pnp.fid = #fid pnp.tmp run function pnp:fight_box/leave
scoreboard players set #fu pnp.tmp 0
scoreboard players set #fe pnp.tmp 0
execute as @e[type=item_display,tag=pnp.infight,distance=..14] if score @s pnp.fid = #fid pnp.tmp if score @s pnp.fside matches 1 run scoreboard players add #fu pnp.tmp 1
execute as @e[type=item_display,tag=pnp.infight,distance=..14] if score @s pnp.fid = #fid pnp.tmp if score @s pnp.fside matches 2 run scoreboard players add #fe pnp.tmp 1
execute if score #fu pnp.tmp matches 0 run return run function pnp:fight_box/end
execute if score #fe pnp.tmp matches 0 run return run function pnp:fight_box/end
scoreboard players operation #fn pnp.tmp = #fu pnp.tmp
scoreboard players operation #fn pnp.tmp += #fe pnp.tmp
execute unless score #fn pnp.tmp = @s pnp.fn run scoreboard players set @s pnp.fdirty 1
scoreboard players operation @s pnp.fn = #fn pnp.tmp
execute if score @s pnp.fdirty matches 1.. run function pnp:fight_box/layout
scoreboard players set #fslow pnp.tmp 0
execute as @e[type=item_display,tag=pnp.infight,distance=..14] if score @s pnp.fid = #fid pnp.tmp if entity @s[tag=pnp.slow] run scoreboard players set #fslow pnp.tmp 1
execute if score #fslow pnp.tmp matches 1 unless score #g5 pnp.tmp matches 0 run return run tag @s remove pnp.fcur
execute if score @s pnp.fbusy matches 1.. run scoreboard players remove @s pnp.fbusy 1
execute if score @s pnp.fbusy matches 3 run function pnp:fight_box/layout
execute if score @s pnp.fbusy matches 1.. run return run tag @s remove pnp.fcur
execute as @e[type=item_display,tag=pnp.infight,distance=..14] if score @s pnp.fid = #fid pnp.tmp run scoreboard players remove @s pnp.cd 1
tag @e[type=item_display,tag=pnp.fready] remove pnp.fready
execute as @e[type=item_display,tag=pnp.infight,distance=..14,scores={pnp.cd=..0}] if score @s pnp.fid = #fid pnp.tmp run tag @s add pnp.fready
execute as @e[type=item_display,tag=pnp.fready,limit=1,sort=random] at @s run function pnp:fight_box/act
tag @e[type=item_display,tag=pnp.fready] remove pnp.fready
tag @s remove pnp.fcur
