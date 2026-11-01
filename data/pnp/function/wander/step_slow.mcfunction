scoreboard players set #ok pnp.tmp 0
tag @s add pnp.wself
execute if score @s pnp.wd matches 0 store success score #ok pnp.tmp positioned ~0.45 ~ ~0 if block ~ 64 ~ #pnp:felt unless entity @e[type=item_display,tag=pnp.card,tag=!pnp.wself,distance=..0.5]
execute if score @s pnp.wd matches 0 if score #ok pnp.tmp matches 1 run tp @s ~0.025 ~ ~0
execute if score @s pnp.wd matches 1 store success score #ok pnp.tmp positioned ~0.3182 ~ ~0.3182 if block ~ 64 ~ #pnp:felt unless entity @e[type=item_display,tag=pnp.card,tag=!pnp.wself,distance=..0.5]
execute if score @s pnp.wd matches 1 if score #ok pnp.tmp matches 1 run tp @s ~0.0177 ~ ~0.0177
execute if score @s pnp.wd matches 2 store success score #ok pnp.tmp positioned ~0 ~ ~0.45 if block ~ 64 ~ #pnp:felt unless entity @e[type=item_display,tag=pnp.card,tag=!pnp.wself,distance=..0.5]
execute if score @s pnp.wd matches 2 if score #ok pnp.tmp matches 1 run tp @s ~0 ~ ~0.025
execute if score @s pnp.wd matches 3 store success score #ok pnp.tmp positioned ~-0.3182 ~ ~0.3182 if block ~ 64 ~ #pnp:felt unless entity @e[type=item_display,tag=pnp.card,tag=!pnp.wself,distance=..0.5]
execute if score @s pnp.wd matches 3 if score #ok pnp.tmp matches 1 run tp @s ~-0.0177 ~ ~0.0177
execute if score @s pnp.wd matches 4 store success score #ok pnp.tmp positioned ~-0.45 ~ ~0 if block ~ 64 ~ #pnp:felt unless entity @e[type=item_display,tag=pnp.card,tag=!pnp.wself,distance=..0.5]
execute if score @s pnp.wd matches 4 if score #ok pnp.tmp matches 1 run tp @s ~-0.025 ~ ~0
execute if score @s pnp.wd matches 5 store success score #ok pnp.tmp positioned ~-0.3182 ~ ~-0.3182 if block ~ 64 ~ #pnp:felt unless entity @e[type=item_display,tag=pnp.card,tag=!pnp.wself,distance=..0.5]
execute if score @s pnp.wd matches 5 if score #ok pnp.tmp matches 1 run tp @s ~-0.0177 ~ ~-0.0177
execute if score @s pnp.wd matches 6 store success score #ok pnp.tmp positioned ~0 ~ ~-0.45 if block ~ 64 ~ #pnp:felt unless entity @e[type=item_display,tag=pnp.card,tag=!pnp.wself,distance=..0.5]
execute if score @s pnp.wd matches 6 if score #ok pnp.tmp matches 1 run tp @s ~0 ~ ~-0.025
execute if score @s pnp.wd matches 7 store success score #ok pnp.tmp positioned ~0.3182 ~ ~-0.3182 if block ~ 64 ~ #pnp:felt unless entity @e[type=item_display,tag=pnp.card,tag=!pnp.wself,distance=..0.5]
execute if score @s pnp.wd matches 7 if score #ok pnp.tmp matches 1 run tp @s ~0.0177 ~ ~-0.0177
tag @s remove pnp.wself
execute if score #ok pnp.tmp matches 0 run function pnp:wander/turn
