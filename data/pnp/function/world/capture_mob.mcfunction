data remove storage pnp:board caplvl
data modify storage pnp:board caplvl set from entity @s VillagerData.level
data remove storage pnp:board capprof
data modify storage pnp:board capprof set from entity @s VillagerData.profession
scoreboard players set #caught pnp.tmp 1
data modify storage pnp:board cap.card set value "villager"
execute if entity @s[type=minecraft:sheep] run data modify storage pnp:board cap.card set value "sheep"
execute if entity @s[type=minecraft:cow] run data modify storage pnp:board cap.card set value "cow"
execute if entity @s[type=minecraft:chicken] run data modify storage pnp:board cap.card set value "chicken"
execute if entity @s[type=minecraft:pig] run data modify storage pnp:board cap.card set value "pig"
execute if entity @s[type=minecraft:wolf] run data modify storage pnp:board cap.card set value "wolf"
particle minecraft:poof ~ ~0.8 ~ 0.3 0.4 0.3 0.02 15
playsound minecraft:item.book.page_turn master @a[distance=..16] ~ ~ ~ 1 1.4
tp @s ~ -400 ~
kill @s
execute as @a[tag=pnp.capturer,limit=1] run function pnp:world/deliver with storage pnp:board cap
execute if data storage pnp:board capprof as @e[type=item_display,tag=pnp.c.villager] if score @s pnp.uid = #uid pnp.ids run function pnp:villager/set_profession
