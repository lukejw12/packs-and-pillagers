execute unless score #hsize pnp.tmp matches 1 run return run scoreboard players set #route pnp.tmp 2
execute unless score #hkind pnp.tmp matches 1 run return run scoreboard players set #route pnp.tmp 2
scoreboard players set #route pnp.tmp 1
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s positioned ~ 65.01 ~1.05 run function pnp:board/drop/free
scoreboard players operation #e pnp.tmp = @e[type=item_display,tag=pnp.dt,limit=1] pnp.uid
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.stack = #hsid pnp.tmp if score @s pnp.idx matches 0 at @s run function pnp:fight_box/drop_join
