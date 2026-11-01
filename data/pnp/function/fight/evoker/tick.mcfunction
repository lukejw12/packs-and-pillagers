execute if entity @s[tag=pnp.slow] unless score #g5 pnp.tmp matches 0 run return 0
scoreboard players add @s pnp.spell 1
execute if entity @s[tag=pnp.enraged] run scoreboard players add @s pnp.spell 1
execute if score @s pnp.spell matches 110.. run function pnp:fight/evoker/cast
