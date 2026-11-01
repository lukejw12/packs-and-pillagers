execute unless score #speed pnp.ids matches 1.. run scoreboard players set #speed pnp.ids 1
execute if score #pman pnp.ids matches 1 run scoreboard players set #pman pnp.ids 0
execute if score #pman pnp.ids matches 0 unless score #pstate pnp.ids matches 0 run function pnp:speed/step
function pnp:speed/check
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.7 1.2
title @s actionbar [{text:"Speed ",color:"gold"},{score:{name:"#speed",objective:"pnp.ids"},color:"white"},{text:"×",color:"white"}]
