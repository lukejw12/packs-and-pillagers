execute if score @s pnp.bset matches 1 run return run function pnp:cardopedia/render
execute store result storage pnp:board br.p int 1 run scoreboard players get @s pnp.here
execute store result storage pnp:board br.s int 1 run scoreboard players get @s pnp.bset
scoreboard players operation #bl pnp.tmp = @s pnp.book
scoreboard players operation #bl pnp.tmp *= #2 pnp.tmp
execute store result storage pnp:board br.l int 1 run scoreboard players get #bl pnp.tmp
scoreboard players add #bl pnp.tmp 1
execute store result storage pnp:board br.r int 1 run scoreboard players get #bl pnp.tmp
function pnp:book/render_page with storage pnp:board br
