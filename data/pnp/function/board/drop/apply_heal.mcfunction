execute if score @s pnp.hpmax matches 1.. run scoreboard players operation #maxhp pnp.tmp = @s pnp.hpmax
scoreboard players operation @s pnp.hp += #heal pnp.tmp
execute if score @s pnp.hp > #maxhp pnp.tmp run scoreboard players operation @s pnp.hp = #maxhp pnp.tmp
function pnp:card/label/stats
particle minecraft:heart ~ ~0.4 ~ 0.25 0.1 0.25 0 5
playsound minecraft:entity.generic.eat master @a[distance=..24] ~ ~ ~ 0.8 1
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:card/remove
scoreboard players set #healed pnp.tmp 1
