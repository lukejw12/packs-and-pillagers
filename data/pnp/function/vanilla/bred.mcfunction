scoreboard players remove @s pnp.vbred 3
execute store result storage pnp:board vi.i int 1 run random value 0..3
function pnp:vanilla/animal_for_item with storage pnp:board vi
execute if score @s pnp.vbred matches 3.. run function pnp:vanilla/bred
