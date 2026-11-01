$data modify storage pnp:pedia2 ps.i set value $(i)
$data modify storage pnp:pedia2 ps.x set value $(x)
$data modify storage pnp:pedia2 ps.z set value $(z)
scoreboard players operation #pi pnp.tmp = @s pnp.book
scoreboard players operation #pi pnp.tmp *= #12 pnp.tmp
$scoreboard players add #pi pnp.tmp $(i)
execute store result storage pnp:pedia2 ps.n int 1 run scoreboard players get #pi pnp.tmp
function pnp:cardopedia/select_slot with storage pnp:pedia2 ps
