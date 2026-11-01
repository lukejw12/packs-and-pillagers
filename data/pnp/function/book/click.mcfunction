execute anchored eyes positioned ^ ^ ^ summon marker run function pnp:book/eye_position
execute as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp run function pnp:book/hit
scoreboard players set #other pnp.tmp 0
function pnp:book/click_at
