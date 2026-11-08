function pnp:admin/settings/here
scoreboard players set @s pnp.msz 30
function pnp:board/size/fill_main
function pnp:board/size/move_shop
execute unless score @s pnp.sbsz matches 12.. run function pnp:board/side_board/build
scoreboard players set @s pnp.sbsz 36
function pnp:board/side_board/fill
function pnp:admin/settings/board_p with storage pnp:board adm
title @s actionbar {translate:"pnp.admin.done.board",fallback:"Your tables are as big as they get.",color:"green"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.4
