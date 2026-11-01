function pnp:cardopedia/detail/close
execute if data storage pnp:pedia2 dt{k:1b} run function pnp:cardopedia/detail/known with storage pnp:pedia2 dt
execute if data storage pnp:pedia2 dt{k:0b} run function pnp:cardopedia/detail/unknown with storage pnp:pedia2 dt
scoreboard players operation @e[tag=pnp.pd_dnew] pnp.pid = #me pnp.tmp
tag @e[tag=pnp.pd_dnew] remove pnp.pd_dnew
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.8 1.4
