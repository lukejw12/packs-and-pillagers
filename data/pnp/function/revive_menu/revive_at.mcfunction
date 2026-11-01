scoreboard players set #rvok pnp.tmp 1
particle minecraft:totem_of_undying ~ ~0.4 ~ 0.3 0.3 0.3 0.5 60
playsound minecraft:item.totem.use master @a[distance=..32] ~ ~ ~ 0.6 1
function pnp:card/pop {card:"villager"}
execute as @e[type=item_display,tag=pnp.card,distance=..3] if score @s pnp.uid = #uid pnp.ids run function pnp:villager/name/set with storage pnp:board rv
scoreboard players operation #csid pnp.tmp = @s pnp.stack
tag @s add pnp.dying
execute if score @s pnp.idx matches 0 run return run function pnp:fight/die_here
execute as @e[type=item_display,tag=pnp.card,distance=..8] if score @s pnp.stack = #csid pnp.tmp if score @s pnp.idx matches 0 at @s run function pnp:fight/die_here
