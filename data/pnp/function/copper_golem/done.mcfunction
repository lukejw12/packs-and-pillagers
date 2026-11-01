scoreboard players set @s pnp.cgn 0
scoreboard players set @s pnp.cgs 0
scoreboard players set @s pnp.cgt 0
scoreboard players set @s pnp.cgm 0
scoreboard players set @s pnp.cgh 0
execute unless score @s pnp.hb matches 1.. run function pnp:fight/hop_start
