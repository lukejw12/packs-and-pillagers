scoreboard players set #kw pnp.tmp 0
scoreboard players set #ka pnp.tmp 0
scoreboard players set #ks pnp.tmp 0
scoreboard players set #kd pnp.tmp 0
scoreboard players set #kj pnp.tmp 0
scoreboard players set #kc pnp.tmp 0
execute if predicate pnp:movement/forward run scoreboard players set #kw pnp.tmp 1
execute if predicate pnp:movement/left run scoreboard players set #ka pnp.tmp 1
execute if predicate pnp:movement/backwards run scoreboard players set #ks pnp.tmp 1
execute if predicate pnp:movement/right run scoreboard players set #kd pnp.tmp 1
execute if predicate pnp:movement/jump run scoreboard players set #kj pnp.tmp 1
execute if predicate pnp:movement/sprint run scoreboard players set #kc pnp.tmp 1
execute on vehicle store result score #camx pnp.tmp run data get entity @s Pos[0]
execute on vehicle store result score #camz pnp.tmp run data get entity @s Pos[2]
scoreboard players set #felt pnp.tmp 0
execute on vehicle at @s if block ~ 64 ~ #pnp:felt run scoreboard players set #felt pnp.tmp 1
title @s actionbar [{text:"W"},{score:{name:"#kw",objective:"pnp.tmp"}},{text:" A"},{score:{name:"#ka",objective:"pnp.tmp"}},{text:" S"},{score:{name:"#ks",objective:"pnp.tmp"}},{text:" D"},{score:{name:"#kd",objective:"pnp.tmp"}},{text:" ",extra:[{translate:"pnp.debug.space",fallback:"Space"}]},{score:{name:"#kj",objective:"pnp.tmp"}},{text:" ",extra:[{translate:"pnp.debug.ctrl",fallback:"Ctrl"}]},{score:{name:"#kc",objective:"pnp.tmp"}},{text:"   ",extra:[{translate:"pnp.debug.camera",fallback:"camera"}," "]},{score:{name:"#camx",objective:"pnp.tmp"}},{text:" "},{score:{name:"#camz",objective:"pnp.tmp"}},{text:"  ",extra:[{translate:"pnp.debug.over_felt",fallback:"over felt"}," "]},{score:{name:"#felt",objective:"pnp.tmp"}}]
