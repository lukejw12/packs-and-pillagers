scoreboard players set #hs pnp.tmp -1
execute as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp run function pnp:book/hit
execute as @e[type=item_display,tag=pnp.book_base,distance=..40] if score @s pnp.pid = #me pnp.tmp run function pnp:book/center
function pnp:book/relative_position
execute if score #px pnp.tmp matches -3150..-2350 if score #pz pnp.tmp matches -1020..-80 run scoreboard players set #hs pnp.tmp 0
execute if score #px pnp.tmp matches -2150..-1350 if score #pz pnp.tmp matches -1020..-80 run scoreboard players set #hs pnp.tmp 1
execute if score #px pnp.tmp matches -1150..-350 if score #pz pnp.tmp matches -1020..-80 run scoreboard players set #hs pnp.tmp 2
execute if score #px pnp.tmp matches -3150..-2350 if score #pz pnp.tmp matches 150..1090 run scoreboard players set #hs pnp.tmp 3
execute if score #px pnp.tmp matches -2150..-1350 if score #pz pnp.tmp matches 150..1090 run scoreboard players set #hs pnp.tmp 4
execute if score #px pnp.tmp matches -1150..-350 if score #pz pnp.tmp matches 150..1090 run scoreboard players set #hs pnp.tmp 5
execute if score #px pnp.tmp matches 350..1150 if score #pz pnp.tmp matches -1020..-80 run scoreboard players set #hs pnp.tmp 6
execute if score #px pnp.tmp matches 1350..2150 if score #pz pnp.tmp matches -1020..-80 run scoreboard players set #hs pnp.tmp 7
execute if score #px pnp.tmp matches 2350..3150 if score #pz pnp.tmp matches -1020..-80 run scoreboard players set #hs pnp.tmp 8
execute if score #px pnp.tmp matches 350..1150 if score #pz pnp.tmp matches 150..1090 run scoreboard players set #hs pnp.tmp 9
execute if score #px pnp.tmp matches 1350..2150 if score #pz pnp.tmp matches 150..1090 run scoreboard players set #hs pnp.tmp 10
execute if score #px pnp.tmp matches 2350..3150 if score #pz pnp.tmp matches 150..1090 run scoreboard players set #hs pnp.tmp 11
