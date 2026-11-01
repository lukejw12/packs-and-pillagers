execute unless entity @a[tag=pnp.in_board,distance=..40] unless score #g4 pnp.tmp matches 0 run return 0
scoreboard players operation #gu pnp.tmp = @s pnp.uid
execute if score @s pnp.cgs matches 1 run return run function pnp:copper_golem/seek
execute if score @s pnp.cgs matches 2 run return run function pnp:copper_golem/deliver
execute if score @s pnp.cgs matches 3 run return run function pnp:copper_golem/sort_deliver
function pnp:copper_golem/idle
