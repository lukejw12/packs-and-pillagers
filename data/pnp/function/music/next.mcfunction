execute unless score @s pnp.mcat matches 1..9 run return run function pnp:music/begin
execute if score @s pnp.mcat matches 9 run return run function pnp:music/begin
execute if score @s pnp.mcat matches 3..5 run return run function pnp:music/play_category
execute if score @s pnp.mgap matches 0 run return run function pnp:music/gap
function pnp:music/begin
