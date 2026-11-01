scoreboard players set @e[type=marker,tag=pnp.fcur] pnp.fbusy 9
scoreboard players set @s pnp.cd 20
execute if score @s pnp.acd matches 1.. run scoreboard players operation @s pnp.cd = @s pnp.acd
execute if entity @s[tag=pnp.enraged] run scoreboard players operation @s pnp.cd *= #2 pnp.tmp
execute if entity @s[tag=pnp.enraged] run scoreboard players operation @s pnp.cd /= #3 pnp.tmp
execute if score @s pnp.eslo matches 1.. run scoreboard players add @s pnp.cd 10
execute if score @s pnp.efat matches 1.. run scoreboard players add @s pnp.cd 10
tag @e[type=item_display,tag=pnp.tgt] remove pnp.tgt
tag @e[type=item_display,tag=pnp.tcand] remove pnp.tcand
scoreboard players set #want pnp.tmp 2
execute if score @s pnp.fside matches 2 run scoreboard players set #want pnp.tmp 1
execute as @e[type=item_display,tag=pnp.infight,distance=..14] if score @s pnp.fid = #fid pnp.tmp if score @s pnp.fside = #want pnp.tmp run tag @s add pnp.tcand
execute if score #want pnp.tmp matches 1 if entity @e[type=item_display,tag=pnp.tcand,tag=pnp.guard] run tag @e[type=item_display,tag=pnp.tcand,tag=!pnp.guard] remove pnp.tcand
execute as @e[type=item_display,tag=pnp.tcand,limit=1,sort=random] run tag @s add pnp.tgt
tag @e[type=item_display,tag=pnp.tcand] remove pnp.tcand
execute unless entity @e[type=item_display,tag=pnp.tgt] run return 0
execute as @e[type=item_display,tag=pnp.tgt,limit=1] run scoreboard players operation #t pnp.tmp = @s pnp.uid
scoreboard players operation #atk pnp.tmp = @s pnp.atk
execute if score @s pnp.ewea matches 1.. run scoreboard players remove #atk pnp.tmp 1
execute unless entity @s[tag=pnp.ranged] facing entity @e[type=item_display,tag=pnp.tgt,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.5 run tp @s ~ ~ ~
function pnp:fight/resolve
