execute store result storage pnp:pedia2 ua.p int 1 run scoreboard players get @s pnp.pid
execute if score @s pnp.here matches 1.. store result storage pnp:pedia2 ua.p int 1 run scoreboard players get @s pnp.here
function pnp:debug/cardopedia/lock_card with storage pnp:pedia2 ua
tellraw @s {text:"The Cardopedia shows only the cards you've found again.",color:"gray"}
execute if entity @s[tag=pnp.pd_open] run scoreboard players operation #me pnp.tmp = @s pnp.pid
execute if entity @s[tag=pnp.pd_open] run function pnp:cardopedia/render
