scoreboard players set #atk pnp.tmp 1
data modify storage pnp:board cause set value "Thorns from a Prismarine Shard"
execute at @s run particle minecraft:enchanted_hit ~ ~0.2 ~ 0.15 0.1 0.15 0.1 6
execute at @s run function pnp:fight/hit
