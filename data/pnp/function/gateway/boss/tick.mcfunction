execute if entity @s[tag=pnp.slow] unless score #g5 pnp.tmp matches 0 run return 0
scoreboard players add @s pnp.spell 1
execute if entity @s[tag=pnp.enraged] run scoreboard players add @s pnp.spell 1
execute if entity @s[tag=pnp.enraged] if score #g5 pnp.tmp matches 0 run particle minecraft:angry_villager ~ ~0.4 ~ 0.2 0.1 0.2 0 1
execute if entity @s[tag=pnp.c.breeze] run scoreboard players add @s pnp.bsp 1
execute if entity @s[tag=pnp.c.breeze,tag=pnp.enraged] run scoreboard players add @s pnp.bsp 1
execute if entity @s[tag=pnp.c.breeze] if score @s pnp.bsp matches 100.. run function pnp:gateway/breeze_gust
execute if entity @s[tag=pnp.c.warden] if score @s pnp.spell matches 90.. run function pnp:gateway/sonic_boom
execute if entity @s[tag=pnp.c.breeze] if score @s pnp.spell matches 10 run particle minecraft:small_gust ~ ~0.3 ~ 0.3 0.1 0.3 0 2
execute if entity @s[tag=pnp.c.breeze] if score @s pnp.spell matches 20.. run scoreboard players set @s pnp.spell 0
execute if entity @s[tag=pnp.c.illusioner] if score @s pnp.spell matches 100 run function pnp:gateway/illusioner/blind
execute if entity @s[tag=pnp.c.illusioner] if score @s pnp.spell matches 220.. run function pnp:gateway/illusioner/split
execute if entity @s[tag=pnp.c.illusioner,tag=!pnp.illusion] if score @s pnp.fuse matches 1.. run scoreboard players remove @s pnp.fuse 1
execute if entity @s[tag=pnp.c.illusioner,tag=!pnp.illusion] if score @s pnp.fuse matches 1 run function pnp:gateway/illusioner/swap_slot
execute if entity @s[tag=pnp.c.redstone_monstrosity] run function pnp:redstone_caves/monstrosity/tick
execute if entity @s[tag=pnp.c.redstone_golem] run function pnp:redstone_caves/golem/tick
