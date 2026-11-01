scoreboard players operation #qp pnp.tmp = @s pnp.pid
scoreboard players set #has pnp.tmp 0
scoreboard players set #np pnp.tmp 0
execute as @e[type=item_display,tag=pnp.c.player_portal] if score @s pnp.pown = #pp pnp.tmp run scoreboard players add #np pnp.tmp 1
execute as @e[type=item_display,tag=pnp.c.player_portal] if score @s pnp.pown = #pp pnp.tmp if score @s pnp.ptp = #qp pnp.tmp run scoreboard players set #has pnp.tmp 1
execute if score #has pnp.tmp matches 1 run return 0
function pnp:pvp/name
scoreboard players operation #px pnp.tmp = #pp pnp.tmp
scoreboard players operation #px pnp.tmp *= #1024 pnp.tmp
scoreboard players set #pm pnp.tmp 18
execute as @a if score @s pnp.pid = #pp pnp.tmp if score @s pnp.msz matches 1.. run scoreboard players operation #pm pnp.tmp = @s pnp.msz
scoreboard players operation #ph pnp.tmp = #pm pnp.tmp
scoreboard players set #c2v pnp.tmp 2
scoreboard players operation #ph pnp.tmp /= #c2v pnp.tmp
scoreboard players add #px pnp.tmp 14
scoreboard players operation #px pnp.tmp += #ph pnp.tmp
execute store result storage pnp:pvp ps.x int 1 run scoreboard players get #px pnp.tmp
scoreboard players operation #pz pnp.tmp = #np pnp.tmp
scoreboard players operation #pz pnp.tmp *= #c26 pnp.tmp
scoreboard players set #pz0 pnp.tmp 18
scoreboard players operation #pz0 pnp.tmp -= #ph pnp.tmp
scoreboard players set #c10v pnp.tmp 10
scoreboard players operation #pz0 pnp.tmp *= #c10v pnp.tmp
scoreboard players add #pz0 pnp.tmp 5
scoreboard players operation #pz pnp.tmp += #pz0 pnp.tmp
execute store result storage pnp:pvp ps.z double 0.1 run scoreboard players get #pz pnp.tmp
execute store result storage pnp:pvp ps.q int 1 run scoreboard players get #qp pnp.tmp
function pnp:pvp/portal/spawn with storage pnp:pvp ps
