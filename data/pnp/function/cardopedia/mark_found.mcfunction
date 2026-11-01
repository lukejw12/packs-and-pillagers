execute if entity @s[tag=pnp.k.idea] run return 0
execute store result score #own pnp.tmp run data get entity @s Pos[0]
scoreboard players add #own pnp.tmp 64
scoreboard players operation #own pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board pd.p int 1 run scoreboard players get #own pnp.tmp
$data modify storage pnp:board pd.c set value "$(c)"
function pnp:cardopedia/mark_found_for_card with storage pnp:board pd
