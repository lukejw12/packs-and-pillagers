$summon villager ~ ~ ~ {Tags:["pnp.relnew"],VillagerData:{profession:"$(prof)",level:$(lvl),type:"minecraft:plains"}}
data modify entity @e[type=villager,tag=pnp.relnew,limit=1] Offers.Recipes set from storage pnp:board rel.offers
execute if score #rl pnp.tmp matches 1 run data merge entity @e[type=villager,tag=pnp.relnew,limit=1] {Xp:1}
execute if score #rl pnp.tmp matches 2 run data merge entity @e[type=villager,tag=pnp.relnew,limit=1] {Xp:10}
execute if score #rl pnp.tmp matches 3 run data merge entity @e[type=villager,tag=pnp.relnew,limit=1] {Xp:70}
execute if score #rl pnp.tmp matches 4 run data merge entity @e[type=villager,tag=pnp.relnew,limit=1] {Xp:150}
execute if score #rl pnp.tmp matches 5 run data merge entity @e[type=villager,tag=pnp.relnew,limit=1] {Xp:250}
execute at @e[type=villager,tag=pnp.relnew,limit=1] run particle minecraft:happy_villager ~ ~1 ~ 0.4 0.6 0.4 0 20
tag @e[type=villager,tag=pnp.relnew] remove pnp.relnew
