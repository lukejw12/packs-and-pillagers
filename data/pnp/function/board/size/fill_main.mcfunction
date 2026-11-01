scoreboard players set #c2 pnp.tmp 2
scoreboard players operation #h pnp.tmp = @s pnp.msz
scoreboard players operation #h pnp.tmp /= #c2 pnp.tmp
scoreboard players set #a0 pnp.tmp 16
scoreboard players operation #a0 pnp.tmp -= #h pnp.tmp
scoreboard players set #a1 pnp.tmp 15
scoreboard players operation #a1 pnp.tmp += #h pnp.tmp
function pnp:board/plot/get_coords
data modify storage pnp:board ms.x0 set from storage pnp:board tmp.x
execute store result storage pnp:board ms.a0 int 1 run scoreboard players get #a0 pnp.tmp
execute store result storage pnp:board ms.a1 int 1 run scoreboard players get #a1 pnp.tmp
function pnp:board/size/fill_main_at_plot with storage pnp:board ms
