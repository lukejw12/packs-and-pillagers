scoreboard players add #ovt pnp.ids 1
execute if score #ovt pnp.ids matches ..19 run return 0
scoreboard players set #ovt pnp.ids 0
execute if function pnp:speed/over_limit/check_all run return run execute as @a[tag=pnp.over] run title @s actionbar [{text:"Too many cards on your table! ",color:"red"},{text:"Get down to ",color:"gray"},{score:{name:"@s",objective:"pnp.ovm"},color:"white"},{text:" to continue the day. Shelves and Vaults add more room.",color:"gray"}]
scoreboard players set #pover pnp.ids 0
title @a[tag=pnp.in_board] actionbar {text:"Back under the limit. The day goes on.",color:"green"}
function pnp:speed/check
