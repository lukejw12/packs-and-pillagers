execute store success score #fresh pnp.tmp unless block ~16 ~ ~16 #pnp:felt
execute if score #fresh pnp.tmp matches 1 run scoreboard players set @s pnp.bsize 1
execute if score #fresh pnp.tmp matches 1 run scoreboard players set @s pnp.bsv 2
execute unless score @s pnp.bsize matches 1.. run scoreboard players set @s pnp.bsize 4
fill ~ ~ ~ ~31 ~ ~31 minecraft:spruce_planks replace minecraft:air
function pnp:board/size/fill
execute if score #fresh pnp.tmp matches 1 run function pnp:shop/packs_init
execute if score #fresh pnp.tmp matches 1 run function pnp:board/plot/give_starter_cards
execute if score #fresh pnp.tmp matches 1 run function pnp:supper/set_born_day
execute if score #fresh pnp.tmp matches 0 unless score @s pnp.plot matches 2 run function pnp:board/plot/give_gift
scoreboard players set @s pnp.plot 2
execute if score #fresh pnp.tmp matches 1 run function pnp:board/size/shrink_to_12
