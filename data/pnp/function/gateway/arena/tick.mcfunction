execute unless score @s pnp.gwn matches 1.. run scoreboard players set @s pnp.gwn 4
execute store result score #ae pnp.tmp if entity @e[type=item_display,tag=pnp.k.enemy,distance=..15]
execute store result score #au pnp.tmp if entity @e[type=item_display,tag=pnp.k.unit,distance=..15]
execute if score #au pnp.tmp matches 0 as @a[tag=pnp.gw_owner,limit=1] run return run function pnp:gateway/finish {r:0}
execute if score #ae pnp.tmp matches 1.. run return run function pnp:gateway/bar/update
scoreboard players remove @s pnp.gwt 1
execute if score @s pnp.gwt matches 1.. run return 0
execute if score @s pnp.gwv >= @s pnp.gwn as @a[tag=pnp.gw_owner,limit=1] run return run function pnp:gateway/finish {r:1}
function pnp:gateway/wave
