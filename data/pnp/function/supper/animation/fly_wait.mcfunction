scoreboard players add @s pnp.stm 1
execute if score @s pnp.stm < #dfly pnp.tmp run return 0
execute as @e[type=item_display,tag=pnp.meal] if score @s pnp.mown = #me pnp.tmp if entity @s[tag=pnp.mfly] at @s run function pnp:supper/animation/arrive_effect
scoreboard players set @s pnp.sfly 0
scoreboard players set @s pnp.stm 0
