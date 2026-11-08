scoreboard players operation #csid pnp.tmp = @s pnp.stack
data modify storage pnp:board scan set value {counts:{}}
scoreboard players set #size pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held,distance=..64] if score @s pnp.stack = #csid pnp.tmp run function pnp:board/stack/count
execute if entity @s[tag=pnp.c.nether_portal] if score #size pnp.tmp matches 2.. run return run function pnp:nether/send
data modify storage pnp:board scan.list set from storage pnp:cards recipes
scoreboard players set #match pnp.tmp 0
function pnp:idea/load_known
function pnp:board/stack/match
execute if score #match pnp.tmp matches 0 run function pnp:villager/count_stack_villagers
execute if score #match pnp.tmp matches 1 run return run function pnp:board/recipe/start with storage pnp:board scan.hit
execute if function pnp:board/stack/suggest/start run return run function pnp:board/recipe/start with storage pnp:board scan.best
function pnp:board/recipe/clear
