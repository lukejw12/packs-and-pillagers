scoreboard players set #sv pnp.tmp 0
scoreboard players operation #hu pnp.tmp = @s pnp.hover
execute if score #hu pnp.tmp matches 1.. as @e[type=item_display,tag=pnp.slotable,tag=!pnp.held,distance=..64] if score @s pnp.uid = #hu pnp.tmp run scoreboard players operation #sv pnp.tmp = #hu pnp.tmp
scoreboard players set #sh pnp.tmp 0
execute if score @s pnp.svil matches 1.. as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp at @s as @e[type=item_display,tag=pnp.slotf,distance=..0.26,sort=nearest,limit=1] if score @s pnp.pid = #me pnp.tmp run scoreboard players operation #sh pnp.tmp = @s pnp.slotn
execute if score #sh pnp.tmp matches 1.. run scoreboard players operation #sv pnp.tmp = @s pnp.svil
scoreboard players operation @s pnp.sslot = #sh pnp.tmp
execute if score #sv pnp.tmp matches 1.. run scoreboard players set @s pnp.slinger 0
execute if score #sv pnp.tmp matches 0 if score @s pnp.svil matches 1.. run scoreboard players add @s pnp.slinger 1
execute if score #sv pnp.tmp matches 0 if score @s pnp.svil matches 1.. if score @s pnp.slinger matches ..10 run return run function pnp:villager/slots/follow
execute if score #sv pnp.tmp = @s pnp.svil run return run function pnp:villager/slots/follow
function pnp:villager/slots/show
