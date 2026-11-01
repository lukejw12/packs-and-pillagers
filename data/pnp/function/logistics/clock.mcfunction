scoreboard players set #lc pnp.ids 0
tag @e[type=block_display,tag=pnp.link,tag=pnp.board_ent] remove pnp.board_ent
scoreboard players add #lk2 pnp.ids 1
execute if score #lk2 pnp.ids matches 2.. run scoreboard players set #lk2 pnp.ids 0
execute if score #lk2 pnp.ids matches 0 as @e[type=block_display,tag=pnp.link] at @s run function pnp:wrench/link/update
scoreboard players add #lc2 pnp.ids 1
execute if score #lc2 pnp.ids matches 2.. run function pnp:logistics/work
