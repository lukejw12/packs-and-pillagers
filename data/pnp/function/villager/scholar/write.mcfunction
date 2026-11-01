scoreboard players set @s pnp.study 0
execute store result storage pnp:board vi.i int 1 run random value 0..22
function pnp:villager/scholar/write_item with storage pnp:board vi
particle minecraft:enchant ~ ~0.6 ~ 0.3 0.3 0.3 1 30
