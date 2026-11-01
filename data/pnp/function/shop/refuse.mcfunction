scoreboard players set #route pnp.tmp 2
execute store result storage pnp:board lk.h int 1 run scoreboard players get #lkh pnp.tmp
function pnp:shop/refuse_with_hint with storage pnp:board lk
playsound minecraft:block.chest.locked master @a[tag=pnp.dropper] ~ ~ ~ 0.7 1
