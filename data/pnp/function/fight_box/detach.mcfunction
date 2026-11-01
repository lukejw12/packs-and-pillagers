scoreboard players operation #ost pnp.tmp = @s pnp.stack
scoreboard players operation #oix pnp.tmp = @s pnp.idx
scoreboard players operation #me3 pnp.tmp = @s pnp.uid
scoreboard players set #omates pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,distance=..3] if score @s pnp.stack = #ost pnp.tmp unless score @s pnp.uid = #me3 pnp.tmp run scoreboard players add #omates pnp.tmp 1
execute if score #omates pnp.tmp matches 0 run return 0
scoreboard players add #stack pnp.ids 1
scoreboard players operation @s pnp.stack = #stack pnp.ids
scoreboard players set @s pnp.idx 0
scoreboard players set @s pnp.recipe 0
scoreboard players set @s pnp.timer 0
execute as @e[type=item_display,tag=pnp.card,distance=..3] if score @s pnp.stack = #ost pnp.tmp if score @s pnp.idx > #oix pnp.tmp run scoreboard players remove @s pnp.idx 1
scoreboard players operation #csid pnp.tmp = #ost pnp.tmp
execute as @e[type=item_display,tag=pnp.card,distance=..3] if score @s pnp.stack = #ost pnp.tmp if score @s pnp.idx matches 0 at @s positioned ~ 65.01 ~ run function pnp:board/stack/compact
