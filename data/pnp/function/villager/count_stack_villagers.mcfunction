scoreboard players set #vn pnp.tmp 0
execute as @e[type=item_display,tag=pnp.c.villager,tag=!pnp.held,distance=..64] if score @s pnp.stack = #csid pnp.tmp if data entity @s item.components."minecraft:custom_data".eq.t run function pnp:villager/count
execute if score #vn pnp.tmp matches 0 run return 0
scoreboard players operation #size pnp.tmp += #vn pnp.tmp
data modify storage pnp:board scan.list set from storage pnp:cards recipes
function pnp:board/stack/match
