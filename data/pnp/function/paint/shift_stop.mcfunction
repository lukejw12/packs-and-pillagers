scoreboard players operation #me pnp.tmp = @s pnp.pid
function pnp:paint/stop
scoreboard players set @s pnp.pslk 1
function pnp:paint/remount
title @s actionbar {translate:"pnp.paint.painting_off_press_shift_again_to",fallback:"Painting off. Press Shift again to leave the table.",color:"gray"}
