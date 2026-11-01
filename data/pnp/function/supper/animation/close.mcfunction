scoreboard players set @s pnp.sanim 0
scoreboard players remove #psup pnp.ids 1
execute if score #psup pnp.ids matches ..-1 run scoreboard players set #psup pnp.ids 0
execute if score #psup pnp.ids matches 0 run function pnp:speed/apply
function pnp:supper/finish_for_player
schedule function pnp:supper/camera/top_down 14t replace
