execute unless score @s pnp.msz matches 1.. run function pnp:board/size/init_size
scoreboard players set #c2 pnp.tmp 2
scoreboard players operation #h pnp.tmp = @s pnp.msz
scoreboard players operation #h pnp.tmp /= #c2 pnp.tmp
scoreboard players set #a0 pnp.tmp 16
scoreboard players operation #a0 pnp.tmp -= #h pnp.tmp
function pnp:board/plot/get_coords
data modify storage pnp:board sm.x0 set from storage pnp:board tmp.x
execute store result storage pnp:board sm.a0 int 1 run scoreboard players get #a0 pnp.tmp
function pnp:board/size/move_shop_at_plot with storage pnp:board sm
