execute unless score @s pnp.book matches 1.. run return run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.8
scoreboard players remove @s pnp.book 1
function pnp:book/render
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 1
