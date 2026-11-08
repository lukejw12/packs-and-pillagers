function pnp:admin/settings/here
data modify storage pnp:board adm.rl set from storage pnp:cards recipes
function pnp:admin/settings/books_loop
function pnp:debug/cardopedia/unlock_all
title @s actionbar {translate:"pnp.admin.done.books",fallback:"You know every recipe, and the Cardopedia is full.",color:"green"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.4
