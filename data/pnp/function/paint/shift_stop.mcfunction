scoreboard players operation #me pnp.tmp = @s pnp.pid
function pnp:paint/stop
scoreboard players set @s pnp.pslk 1
function pnp:paint/remount
title @s actionbar {text:"Painting off. Press Shift again to leave the table.",color:"gray"}
