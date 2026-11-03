execute if entity @s[tag=pnp.in_board] unless score @s pnp.gws matches 1.. run function pnp:board/close
scoreboard players operation @s pnp.pold = @s pnp.plot
scoreboard players set @s pnp.plot 3
tellraw @s {translate:"pnp.coop.your_card_board_now_takes_you",fallback:"Your Card Board now takes you to the shared table. Your own table waits until the shared table is turned off.",color:"green"}
