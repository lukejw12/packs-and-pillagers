function pnp:board/glide/stop
execute rotated ~ 0 as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp positioned as @s positioned ^ ^ ^-4.5 if block ~ 64 ~ #pnp:felt run summon marker ~ 69 ~ {Tags:["pnp.board_ent","pnp.glide","pnp.glide_new"]}
execute unless entity @e[type=marker,tag=pnp.glide_new] as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp at @s run summon marker ~ 69 ~ {Tags:["pnp.board_ent","pnp.glide","pnp.glide_new"]}
scoreboard players operation @e[type=marker,tag=pnp.glide_new] pnp.pid = #me pnp.tmp
tag @e[type=marker,tag=pnp.glide_new] remove pnp.glide_new
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.3 2
