execute unless score #pman pnp.ids matches 0.. run scoreboard players set #pman pnp.ids 0
scoreboard players operation #pold pnp.tmp = #pman pnp.ids
execute if score #pold pnp.tmp matches 0 run scoreboard players set #pman pnp.ids 1
execute if score #pold pnp.tmp matches 1 run scoreboard players set #pman pnp.ids 0
function pnp:speed/check
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
execute if score #pman pnp.ids matches 1 run title @s actionbar {text:"Paused",color:"gold"}
execute if score #pman pnp.ids matches 0 run title @s actionbar {text:"Resumed",color:"gold"}
