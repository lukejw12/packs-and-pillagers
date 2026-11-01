scoreboard players add #ovt pnp.ids 1
execute if score #ovt pnp.ids matches ..19 run return 0
scoreboard players set #ovt pnp.ids 0
execute if function pnp:speed/over_limit/check_all run return run execute as @a[tag=pnp.over] run title @s actionbar [{text:"",extra:[{translate:"pnp.speed.too_many_cards_on_your_table",fallback:"Too many cards on your table!"}," "],color:"red"},{text:"",extra:[{translate:"pnp.speed.get_down_to",fallback:"Get down to"}," "],color:"gray"},{score:{name:"@s",objective:"pnp.ovm"},color:"white"},{text:" ",extra:[{translate:"pnp.speed.to_continue_the_day_shelves_and",fallback:"to continue the day. Shelves and Vaults add more room."}],color:"gray"}]
scoreboard players set #pover pnp.ids 0
title @a[tag=pnp.in_board] actionbar {translate:"pnp.speed.back_under_the_limit_the_day",fallback:"Back under the limit. The day goes on.",color:"green"}
function pnp:speed/check
