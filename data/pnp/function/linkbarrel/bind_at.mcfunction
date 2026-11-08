summon marker ~ ~ ~ {Tags:["pnp.lbm"]}
data modify storage pnp:board lbn set value {}
execute store result storage pnp:board lbn.x int 1 run data get entity @e[type=marker,tag=pnp.lbm,limit=1] Pos[0]
execute store result storage pnp:board lbn.y int 1 run data get entity @e[type=marker,tag=pnp.lbm,limit=1] Pos[1]
execute store result storage pnp:board lbn.z int 1 run data get entity @e[type=marker,tag=pnp.lbm,limit=1] Pos[2]
kill @e[type=marker,tag=pnp.lbm]
data modify storage pnp:board lbn.d set from entity @s Dimension
function pnp:linkbarrel/forceload with storage pnp:board lbn
function pnp:world/deliver {card:"linked_barrel"}
execute as @e[type=item_display,tag=pnp.card] if score @s pnp.uid = #uid pnp.ids run data modify entity @s item.components."minecraft:custom_data".lb set from storage pnp:board lbn
tellraw @s {translate:"pnp.linkbarrel.linked",fallback:"Barrel linked. A Linked Barrel card is on your table.",color:"green"}
playsound minecraft:block.barrel.open master @s ~ ~ ~ 0.8 1.2
