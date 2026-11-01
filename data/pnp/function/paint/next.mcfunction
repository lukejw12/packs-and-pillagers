scoreboard players add @s pnp.paint 1
execute if score @s pnp.paint matches 13.. run scoreboard players set @s pnp.paint 0
scoreboard players set @s pnp.pcs 0
execute as @e[type=block_display,tag=pnp.pmark] if score @s pnp.pid = #me pnp.tmp run kill @s
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.4 1.4
execute if score @s pnp.paint matches 0 run return run title @s actionbar {translate:"pnp.paint.painting_off",fallback:"Painting off.",color:"gray"}
scoreboard players operation #pi pnp.tmp = @s pnp.paint
scoreboard players remove #pi pnp.tmp 1
execute store result storage pnp:board pn.i int 1 run scoreboard players get #pi pnp.tmp
function pnp:paint/next_message with storage pnp:board pn
