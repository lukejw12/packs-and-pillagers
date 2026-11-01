scoreboard players operation #hcs pnp.tmp = @s pnp.stack
scoreboard players set #howned pnp.tmp 0
execute as @a if score @s pnp.holding = #hcs pnp.tmp run scoreboard players set #howned pnp.tmp 1
execute if score #howned pnp.tmp matches 1 run return 0
function pnp:board/drop/release
execute if score @s pnp.idx matches 0 at @s positioned ~ 65.01 ~ run function pnp:board/settle_held_card
