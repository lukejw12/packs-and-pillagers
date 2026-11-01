data modify storage pnp:pvp tk set value {c:"villager"}
data modify storage pnp:pvp tk.d set from entity @s item.components."minecraft:custom_data"
execute store result storage pnp:pvp tk.hp int 1 run scoreboard players get @s pnp.hp
execute store result storage pnp:pvp tk.atk int 1 run scoreboard players get @s pnp.atk
execute if entity @s[tag=pnp.c.wolf] run data modify storage pnp:pvp tk.c set value "wolf"
execute if entity @s[tag=pnp.c.iron_golem] run data modify storage pnp:pvp tk.c set value "iron_golem"
$data modify storage pnp:pvp a$(p).units append from storage pnp:pvp tk
particle minecraft:poof ~ ~0.3 ~ 0.2 0.1 0.2 0.02 10
function pnp:card/remove
