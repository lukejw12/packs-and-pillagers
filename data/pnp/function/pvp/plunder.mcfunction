tag @a remove pnp.ptgt
$execute as @a if score @s pnp.pid matches $(t) run tag @s add pnp.ptgt
$execute as @e[type=item_display,tag=pnp.inv] if score @s pnp.paid = #pa pnp.tmp at @s run function pnp:pvp/grab {p:$(p),x:$(x)}
scoreboard players set @s pnp.pvst 3
tellraw @s [{text:"Your fighters won and are bringing loot home from ",color:"gold"},{selector:"@a[tag=pnp.ptgt,limit=1]"},{text:"'s table!",color:"gold"}]
title @a[tag=pnp.ptgt] actionbar [{selector:"@s"},{text:"'s fighters plundered your table!",color:"red"}]
