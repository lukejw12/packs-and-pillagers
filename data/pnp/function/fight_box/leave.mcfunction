scoreboard players operation #lf pnp.tmp = @s pnp.fid
tag @s remove pnp.infight
scoreboard players set @s pnp.fid 0
execute as @e[type=marker,tag=pnp.fight] if score @s pnp.fid = #lf pnp.tmp run scoreboard players set @s pnp.fdirty 1
