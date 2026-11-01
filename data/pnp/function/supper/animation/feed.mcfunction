execute if score @s pnp.sfly matches 1 run return run function pnp:supper/animation/fly_wait
execute as @e[type=item_display,tag=pnp.meal] if score @s pnp.mown = #me pnp.tmp unless entity @s[tag=pnp.mfly] if score @s pnp.mtgt = #sk pnp.tmp run tag @s add pnp.mcand
execute store result storage pnp:board scam.f int 1 run scoreboard players get #dfly pnp.tmp
scoreboard players set #started pnp.tmp 0
execute as @e[type=item_display,tag=pnp.sfocus] if score @s pnp.vown = #me pnp.tmp at @s as @e[type=item_display,tag=pnp.mcand,distance=..80,sort=nearest,limit=1] run function pnp:supper/animation/fly_start with storage pnp:board scam
tag @e[type=item_display,tag=pnp.mcand] remove pnp.mcand
execute if score #started pnp.tmp matches 1 run return run scoreboard players set @s pnp.sfly 1
execute as @e[type=item_display,tag=pnp.sfocus] if score @s pnp.vown = #me pnp.tmp at @s run function pnp:supper/villager_effect
scoreboard players set @s pnp.sph 2
scoreboard players set @s pnp.stm 0
