scoreboard players operation #me pnp.tmp = @s pnp.pid
function pnp:cardopedia/locate
execute if score #hs pnp.tmp = @s pnp.phov run return 0
execute as @e[tag=pnp.pd_card] if score @s pnp.pid = #me pnp.tmp if score @s pnp.pslot = @p[tag=pnp.pd_me] pnp.phov run data merge entity @s {transformation:{translation:[0f,0f,0f],scale:[0.85f,0.85f,0.85f]},start_interpolation:0}
execute as @e[tag=pnp.pd_txt] if score @s pnp.pid = #me pnp.tmp if score @s pnp.pslot = @p[tag=pnp.pd_me] pnp.phov run function pnp:cardopedia/text_base
scoreboard players operation @s pnp.phov = #hs pnp.tmp
execute as @e[tag=pnp.pd_card] if score @s pnp.pid = #me pnp.tmp if score @s pnp.pslot = #hs pnp.tmp run data merge entity @s {transformation:{translation:[0f,0.06f,0f],scale:[0.969f,0.969f,0.969f]},start_interpolation:0}
execute as @e[tag=pnp.pd_txt] if score @s pnp.pid = #me pnp.tmp if score @s pnp.pslot = #hs pnp.tmp run function pnp:cardopedia/text_big
execute unless score #hs pnp.tmp matches -1 run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.25 1.8
