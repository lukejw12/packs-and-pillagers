data remove entity @s item.components."minecraft:custom_data".ar
data modify entity @s item.components."minecraft:custom_data".ab set value {}
scoreboard players set @s pnp.acprog 0
data modify storage pnp:board acs.c set from entity @s item.components."minecraft:custom_data".flt
function pnp:logistics/autocrafter/setup_card with storage pnp:board acs
execute unless data entity @s item.components."minecraft:custom_data".ar run title @p[distance=..48] actionbar {translate:"pnp.logistics.the_autocrafter_can_t_make_that",fallback:"The Autocrafter can't make that card.",color:"red"}
