execute if entity @s[tag=pnp.in_board] unless score @s pnp.gws matches 1.. run function pnp:board/close
scoreboard players operation @s pnp.plot = @s pnp.pold
execute unless score @s pnp.plot matches 0..2 run scoreboard players set @s pnp.plot 0
tellraw @s {translate:"pnp.coop.the_shared_table_is_off_your",fallback:"The shared table is off. Your Card Board takes you to your own table again.",color:"yellow"}
