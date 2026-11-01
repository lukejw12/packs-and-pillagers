tag @s add pnp.rt
tag @s add pnp.illusion
tag @s add pnp.ranged
tag @s add pnp.arena
scoreboard players set @s pnp.atk 0
scoreboard players set @s pnp.acd 24
scoreboard players set @s pnp.cd 10
scoreboard players set @s pnp.fuse 0
scoreboard players set @s pnp.life 300
scoreboard players operation @s pnp.hp = #illhp pnp.tmp
scoreboard players operation @s pnp.hpmax = #illmax pnp.tmp
function pnp:card/label/stats
data modify entity @s item.components."minecraft:item_model" set value "pnp:card/illusioner_illusion"
data modify entity @s item.components."minecraft:custom_data".eq set value {t:"bow"}
