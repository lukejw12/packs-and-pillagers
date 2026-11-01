data remove entity @s item.components."minecraft:custom_data".eq.s
function pnp:villager/recalculate
scoreboard players operation @s pnp.hp = @s pnp.hpmax
function pnp:card/label/stats
execute at @s run particle minecraft:totem_of_undying ~ ~0.4 ~ 0.3 0.3 0.3 0.5 40
execute at @s run playsound minecraft:item.totem.use master @a[distance=..32] ~ ~ ~ 0.6 1
