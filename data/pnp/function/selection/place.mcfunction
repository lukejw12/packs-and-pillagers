execute in pnp:board as @e[type=item_display,tag=pnp.selg] if score @s pnp.selp = #me pnp.tmp run function pnp:selection/drop_one
scoreboard players set @s pnp.sls 0
function pnp:selection/box/remove
playsound minecraft:item.bundle.drop_contents master @s ~ ~ ~ 0.7 1
return 1
