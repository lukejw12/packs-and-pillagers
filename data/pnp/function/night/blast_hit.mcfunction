scoreboard players set #atk pnp.tmp 5
scoreboard players operation #ks pnp.tmp = @s pnp.stack
scoreboard players operation #ku pnp.tmp = @s pnp.uid
scoreboard players set #busy pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,distance=..1.6] if score @s pnp.stack = #ks pnp.tmp unless score @s pnp.uid = #ku pnp.tmp run scoreboard players set #busy pnp.tmp 1
execute if score #busy pnp.tmp matches 0 facing entity @e[type=item_display,tag=pnp.boom,limit=1] feet rotated ~ 0 positioned ^ ^ ^-0.8 run tp @s ~ ~ ~
function pnp:fight/hit
