summon item_display ~ ~ ~ {Tags:["pnp.namebox"],item:{id:"minecraft:paper",count:1}}
item modify entity @e[type=item_display,tag=pnp.namebox,limit=1] contents {type:"minecraft:set_name",entity:"this",target:"item_name",name:{selector:"@s"}}
execute store result storage pnp:pvp nm.p int 1 run scoreboard players get @s pnp.pid
function pnp:pvp/name_for_player with storage pnp:pvp nm
kill @e[type=item_display,tag=pnp.namebox]
