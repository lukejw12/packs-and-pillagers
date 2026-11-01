function pnp:coop/mates
$execute in pnp:board positioned $(cx) 65 16 store result score #vil pnp.tmp if entity @e[type=item_display,tag=pnp.c.villager,distance=..23]
$execute in pnp:board positioned $(cx) 65 16 store result score #bab pnp.tmp if entity @e[type=item_display,tag=pnp.c.baby_villager,distance=..23]
execute if score #vil pnp.tmp matches 0 if score #bab pnp.tmp matches 0 run return 0
$execute in pnp:board positioned $(cx) 65 16 as @e[type=item_display,tag=pnp.c.villager,distance=..23] run function pnp:supper/clear_status
scoreboard players operation #me pnp.tmp = @s pnp.pid
scoreboard players set #vo pnp.tmp 0
scoreboard players set #mo pnp.tmp 0
scoreboard players set #bpts pnp.tmp 0
$execute in pnp:board positioned $(cx) 65 16 as @e[type=item_display,scores={pnp.vord=1..},distance=..40] if score @s pnp.vown = #me pnp.tmp run function pnp:supper/clear_villager
$execute in pnp:board positioned $(cx) 65 16 positioned ~-40 ~ ~ as @e[type=item_display,tag=pnp.c.baby_villager,tag=!pnp.held,distance=..80,sort=nearest] positioned $(cx) 65 16 if entity @s[distance=..23] run function pnp:supper/number_villager
$execute in pnp:board positioned $(cx) 65 16 positioned ~-40 ~ ~ as @e[type=item_display,tag=pnp.c.villager,tag=!pnp.held,distance=..80,sort=nearest] positioned $(cx) 65 16 if entity @s[distance=..23] run function pnp:supper/number_villager
scoreboard players set #c12 pnp.tmp 2
scoreboard players operation #need pnp.tmp = #vil pnp.tmp
scoreboard players operation #need pnp.tmp *= #c12 pnp.tmp
scoreboard players operation #bneed pnp.tmp = #bab pnp.tmp
scoreboard players operation #need pnp.tmp += #bneed pnp.tmp
scoreboard players operation #need0 pnp.tmp = #need pnp.tmp
scoreboard players set #ate pnp.tmp 0
scoreboard players set #meal pnp.tmp 0
scoreboard players set #efx pnp.tmp 0
$execute in pnp:board positioned $(cx) 65 16 positioned ~-76 ~-5 ~-56 run function pnp:supper/eat_all
function pnp:supper/assign
scoreboard players operation #p pnp.tmp = #need0 pnp.tmp
execute if score #need pnp.tmp matches 1.. run scoreboard players operation #p pnp.tmp -= #need pnp.tmp
scoreboard players operation #p pnp.tmp -= #bneed pnp.tmp
execute if score #p pnp.tmp matches ..-1 run scoreboard players set #p pnp.tmp 0
scoreboard players operation #full pnp.tmp = #p pnp.tmp
scoreboard players operation #full pnp.tmp /= #c12 pnp.tmp
execute if score #full pnp.tmp > #vil pnp.tmp run scoreboard players operation #full pnp.tmp = #vil pnp.tmp
scoreboard players operation #rem pnp.tmp = #p pnp.tmp
scoreboard players operation #rem pnp.tmp %= #c12 pnp.tmp
scoreboard players set #part pnp.tmp 0
execute if score #rem pnp.tmp matches 1.. if score #full pnp.tmp < #vil pnp.tmp run scoreboard players set #part pnp.tmp 1
scoreboard players operation #unfed pnp.tmp = #vil pnp.tmp
scoreboard players operation #unfed pnp.tmp -= #full pnp.tmp
scoreboard players operation #unfed pnp.tmp -= #part pnp.tmp
scoreboard players operation #hungry pnp.tmp = #unfed pnp.tmp
scoreboard players operation #starved pnp.tmp = #unfed pnp.tmp
scoreboard players set #starvedmg pnp.tmp 999
scoreboard players set #wf pnp.tmp 0
scoreboard players operation #meal2 pnp.tmp = #meal pnp.tmp
scoreboard players operation #meal2 pnp.tmp *= #2 pnp.tmp
execute if score #vil pnp.tmp matches 1.. if score #unfed pnp.tmp matches 0 if score #part pnp.tmp matches 0 if score #meal2 pnp.tmp >= #need0 pnp.tmp run scoreboard players set #wf pnp.tmp 1
scoreboard players operation @s pnp.su_unfed = #unfed pnp.tmp
scoreboard players operation @s pnp.su_part = #part pnp.tmp
scoreboard players operation @s pnp.su_wf = #wf pnp.tmp
scoreboard players operation @s pnp.su_need = #need pnp.tmp
scoreboard players set #riding pnp.tmp 0
execute on vehicle if entity @s[tag=pnp.camera] run scoreboard players set #riding pnp.tmp 1
execute if score #riding pnp.tmp matches 1 if score #vo pnp.tmp matches 1.. run return run function pnp:supper/animation/start
function pnp:supper/instant
