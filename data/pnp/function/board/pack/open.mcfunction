data modify storage pnp:board op.card set from entity @s item.components."minecraft:custom_data".card
function pnp:board/pack/open_card with storage pnp:board op
particle minecraft:happy_villager ~ ~0.3 ~ 0.3 0.1 0.3 0 12
playsound minecraft:item.bundle.drop_contents master @a[distance=..24] ~ ~ ~ 1 1
scoreboard players operation #csid pnp.tmp = @s pnp.stack
tag @s add pnp.dying
execute if score @s pnp.idx matches 0 run return run function pnp:fight/die_here
execute as @e[type=item_display,tag=pnp.card,distance=..8] if score @s pnp.stack = #csid pnp.tmp if score @s pnp.idx matches 0 at @s run function pnp:fight/die_here
