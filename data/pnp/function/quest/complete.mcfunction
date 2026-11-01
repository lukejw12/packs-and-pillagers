function pnp:quest/chain_done
data modify storage pnp:board qrw set from entity @s item.components."minecraft:custom_data".rw
scoreboard players add #stack pnp.ids 1
scoreboard players operation #qst pnp.tmp = #stack pnp.ids
scoreboard players set #qi pnp.tmp 0
execute positioned ~ 65.01 ~3.2 run function pnp:quest/reward_loop
scoreboard players operation #csid pnp.tmp = #qst pnp.tmp
execute positioned ~ 65.01 ~3.2 as @e[type=item_display,tag=pnp.card,distance=..2] if score @s pnp.stack = #qst pnp.tmp if score @s pnp.idx matches 0 at @s run function pnp:board/stack/compact
execute store result score #qowner pnp.tmp run data get entity @s Pos[0]
scoreboard players add #qowner pnp.tmp 64
scoreboard players operation #qowner pnp.tmp /= #1024 pnp.tmp
execute as @a if score @s pnp.pid = #qowner pnp.tmp run function pnp:quest/cheer
particle minecraft:totem_of_undying ~ ~0.4 ~ 0.3 0.2 0.3 0.2 30
function pnp:card/remove
