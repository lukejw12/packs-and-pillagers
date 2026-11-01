scoreboard players set #c2 pnp.tmp 2
scoreboard players operation #h pnp.tmp = @s pnp.sbsz
scoreboard players operation #h pnp.tmp /= #c2 pnp.tmp
scoreboard players set #a0 pnp.tmp 18
scoreboard players operation #a0 pnp.tmp -= #h pnp.tmp
scoreboard players set #a1 pnp.tmp 17
scoreboard players operation #a1 pnp.tmp += #h pnp.tmp
function pnp:board/plot/get_coords
data modify storage pnp:board sb.x0 set from storage pnp:board tmp.x
execute store result storage pnp:board sb.a0 int 1 run scoreboard players get #a0 pnp.tmp
execute store result storage pnp:board sb.a1 int 1 run scoreboard players get #a1 pnp.tmp
data modify storage pnp:board sb.b set value -41
execute if score @s pnp.sbv matches 1 run data modify storage pnp:board sb.b set value 50
function pnp:board/side_board/fill_at_plot with storage pnp:board sb
