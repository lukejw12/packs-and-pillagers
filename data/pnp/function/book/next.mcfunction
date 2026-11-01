execute if score @s pnp.book >= @s pnp.blast run return run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.8
scoreboard players add @s pnp.book 1
function pnp:book/render
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 1.1
