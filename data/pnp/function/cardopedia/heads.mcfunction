$data modify storage pnp:pedia2 hd set from storage pnp:pedia2 cat.c$(k)
execute store result score #pn pnp.tmp run data get storage pnp:pedia2 hd.ids
scoreboard players add #pn pnp.tmp 11
scoreboard players operation #pn pnp.tmp /= #12 pnp.tmp
scoreboard players remove #pn pnp.tmp 1
scoreboard players operation @s pnp.blast = #pn pnp.tmp
scoreboard players operation #pgd pnp.tmp = @s pnp.book
scoreboard players add #pgd pnp.tmp 1
execute store result storage pnp:pedia2 hd.pg int 1 run scoreboard players get #pgd pnp.tmp
scoreboard players operation #pgt pnp.tmp = #pn pnp.tmp
scoreboard players add #pgt pnp.tmp 1
execute store result storage pnp:pedia2 hd.pgs int 1 run scoreboard players get #pgt pnp.tmp
function pnp:cardopedia/heads_for_page with storage pnp:pedia2 hd
