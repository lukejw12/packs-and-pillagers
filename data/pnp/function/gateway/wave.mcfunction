execute if score @s pnp.gwv matches 1.. as @e[type=item_display,tag=pnp.k.unit,distance=..15] at @s run function pnp:gateway/heal_two
data modify storage pnp:board gw.s set from entity @s data.s
execute store result storage pnp:board gw.v int 1 run scoreboard players get @s pnp.gwv
scoreboard players add @s pnp.gwv 1
scoreboard players set @s pnp.gwt 50
function pnp:gateway/wave/load with storage pnp:board gw
execute if score @s pnp.gwn matches 4 if score @s pnp.gwv matches ..3 run title @a[tag=pnp.gw_owner] actionbar [{text:"Wave ",color:"light_purple"},{score:{name:"@s",objective:"pnp.gwv"},color:"white"},{text:" of 3",color:"light_purple"}]
execute if score @s pnp.gwn matches 4 if score @s pnp.gwv matches 4 run title @a[tag=pnp.gw_owner] actionbar {text:"The boss is here!",color:"red"}
playsound minecraft:block.trial_spawner.spawn_mob hostile @a[distance=..32] ~ ~ ~ 1 1
execute if score @s pnp.gwn matches 5 run title @a[tag=pnp.gw_owner] actionbar [{text:"Wave ",color:"red"},{score:{name:"@s",objective:"pnp.gwv"},color:"white"},{text:" of 5",color:"red"}]
