execute store result storage pnp:board gp.g int 1 run data get entity @s item.components."minecraft:custom_data".gid
execute store result storage pnp:board gp.p int 1 run scoreboard players get @a[tag=pnp.claimer,limit=1] pnp.pid
function pnp:grave/claim_grave with storage pnp:board gp
function pnp:card/remove
title @a[tag=pnp.claimer] actionbar {text:"Your things will be waiting for you when you leave the table.",color:"gold"}
playsound minecraft:item.armor.equip_generic master @a[tag=pnp.claimer] ~ ~ ~ 0.8 1
