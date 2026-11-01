function pnp:music/want
execute if score @s pnp.mcat = #want pnp.tmp run return 0
execute if score @s pnp.mcat matches 9 if score #want pnp.tmp matches ..2 run return 0
execute if score @s pnp.mcat matches 1..2 if score #want pnp.tmp matches 1..2 run return 0
execute if score @s pnp.mcat matches 4..5 if score #want pnp.tmp matches ..2 run return run function pnp:music/stinger {s:"pnp:music.victory",t:240}
execute if score @s pnp.mcat matches 3 if score #want pnp.tmp matches ..2 run return run function pnp:music/calm_after
scoreboard players operation @s pnp.mcat = #want pnp.tmp
stopsound @s music
function pnp:music/play_category
