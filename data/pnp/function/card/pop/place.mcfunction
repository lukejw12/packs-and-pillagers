data modify storage pnp:board tmp.card set from entity @s item.components."minecraft:custom_data".card
scoreboard players set #canpile pnp.tmp 0
execute if entity @s[tag=pnp.k.res] run scoreboard players set #canpile pnp.tmp 1
execute if entity @s[tag=pnp.k.food] run scoreboard players set #canpile pnp.tmp 1
scoreboard players set #piled pnp.tmp 0
execute if score #canpile pnp.tmp matches 1 store success score #piled pnp.tmp run function pnp:card/pop/near_pile with storage pnp:board tmp
execute if score #piled pnp.tmp matches 1 run return 1
execute positioned ~1.0 ~-0.35 ~ if function pnp:card/pop/free run return run tp @s ~ ~ ~
execute positioned ~-1.0 ~-0.35 ~ if function pnp:card/pop/free run return run tp @s ~ ~ ~
execute positioned ~1.0 ~-0.35 ~-1.1 if function pnp:card/pop/free run return run tp @s ~ ~ ~
execute positioned ~-1.0 ~-0.35 ~-1.1 if function pnp:card/pop/free run return run tp @s ~ ~ ~
execute positioned ~1.0 ~-0.35 ~1.1 if function pnp:card/pop/free run return run tp @s ~ ~ ~
execute positioned ~-1.0 ~-0.35 ~1.1 if function pnp:card/pop/free run return run tp @s ~ ~ ~
execute positioned ~2.0 ~-0.35 ~ if function pnp:card/pop/free run return run tp @s ~ ~ ~
execute positioned ~-2.0 ~-0.35 ~ if function pnp:card/pop/free run return run tp @s ~ ~ ~
execute positioned ~ ~-0.35 ~-1.2 if function pnp:card/pop/free run return run tp @s ~ ~ ~
execute positioned ~2.0 ~-0.35 ~1.1 if function pnp:card/pop/free run return run tp @s ~ ~ ~
execute positioned ~-2.0 ~-0.35 ~1.1 if function pnp:card/pop/free run return run tp @s ~ ~ ~
scoreboard players set #piled pnp.tmp 0
execute if score #canpile pnp.tmp matches 1 store success score #piled pnp.tmp run function pnp:card/pop/pile with storage pnp:board tmp
execute if score #piled pnp.tmp matches 1 run return 1
execute positioned ~1.0 ~-0.35 ~ if block ~ 64 ~ #pnp:felt run return run tp @s ~ ~ ~
tp @s ~-1.0 ~-0.35 ~
