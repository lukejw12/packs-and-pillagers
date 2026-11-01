execute anchored eyes positioned ^ ^ ^ summon marker run function pnp:book/eye_position
execute as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp run function pnp:book/hit
scoreboard players operation #cl pnp.tmp = #me pnp.tmp
scoreboard players set #bk pnp.tmp 0
execute as @e[type=item_display,tag=pnp.book_base,distance=..40] unless score @s pnp.pid = #cl pnp.tmp if score #bk pnp.tmp matches 0 run function pnp:book/try_other
scoreboard players operation #me pnp.tmp = #cl pnp.tmp
execute if score #bk pnp.tmp matches 1 run return 1
return fail
