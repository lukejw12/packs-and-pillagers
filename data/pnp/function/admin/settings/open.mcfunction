execute as @e[tag=pnp.pd_ent] if score @s pnp.pid = #me pnp.tmp run kill @s
tag @s remove pnp.pd_open
scoreboard players set @s pnp.book 0
scoreboard players set @s pnp.bdet 0
scoreboard players set @s pnp.bset 20
scoreboard players set @s pnp.blast 0
function pnp:book/render
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 1
