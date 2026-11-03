execute store result storage pnp:pedia2 ua.p int 1 run scoreboard players get @s pnp.pid
execute if score @s pnp.here matches 1.. store result storage pnp:pedia2 ua.p int 1 run scoreboard players get @s pnp.here
function pnp:debug/cardopedia/unlock_card with storage pnp:pedia2 ua
tellraw @s {translate:"pnp.debug.every_card_is_unlocked_in_this",fallback:"Every card is unlocked in this table's Cardopedia. Resetting the board locks them again.",color:"gold"}
execute if entity @s[tag=pnp.pd_open] run scoreboard players operation #me pnp.tmp = @s pnp.pid
execute if entity @s[tag=pnp.pd_open] run function pnp:cardopedia/render
