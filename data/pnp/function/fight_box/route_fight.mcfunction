scoreboard players set #rf pnp.tmp 0
execute as @e[type=item_display,tag=pnp.infight,distance=..64] if score @s pnp.uid = @p[tag=pnp.dropper] pnp.hover run scoreboard players operation #rf pnp.tmp = @s pnp.fid
execute if score #rf pnp.tmp matches 0 run return fail
scoreboard players set #rfu pnp.tmp 0
execute as @e[type=item_display,tag=pnp.infight,tag=pnp.k.unit,distance=..64] if score @s pnp.uid = @p[tag=pnp.dropper] pnp.hover run scoreboard players set #rfu pnp.tmp 1
execute if score #rfu pnp.tmp matches 1 if score #hkind pnp.tmp matches 2..3 run return fail
execute unless score #hkind pnp.tmp matches 1 run return run scoreboard players set #route pnp.tmp 2
scoreboard players set #route pnp.tmp 1
execute as @e[type=item_display,tag=pnp.infight,distance=..64] if score @s pnp.uid = @p[tag=pnp.dropper] pnp.hover at @s positioned ~ 65.01 ~1.05 run function pnp:board/drop/free
scoreboard players operation #dfid pnp.tmp = #rf pnp.tmp
execute as @e[type=item_display,tag=pnp.card,tag=pnp.k.unit,distance=..64] if score @s pnp.stack = #hsid pnp.tmp at @s run function pnp:fight_box/add_dropped
return 1
