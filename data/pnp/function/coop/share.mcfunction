execute unless score @s pnp.plot matches 2..3 run return run tellraw @s {translate:"pnp.coop.set_up_your_own_card_table",fallback:"Set up your own card table first, then run this again.",color:"red"}
execute if score @s pnp.plot matches 3 unless score @s pnp.pold matches 2 run return run tellraw @s {translate:"pnp.coop.set_up_your_own_card_table",fallback:"Set up your own card table first, then run this again.",color:"red"}
execute if score @s pnp.plot matches 3 run scoreboard players operation @s pnp.plot = @s pnp.pold
scoreboard players operation #coop pnp.ids = @s pnp.pid
execute as @a[tag=pnp.in_board] unless score @s pnp.pid = #coop pnp.ids unless score @s pnp.gws matches 1.. run function pnp:board/close
tellraw @a [{text:"",extra:[{translate:"pnp.coop.everyone_now_shares",fallback:"Everyone now shares"}," "],color:"green"},{selector:"@s"},{translate:"pnp.coop.s_card_table_use_your_card",fallback:"'s card table. Use your Card Board to go there.",color:"green"}]
