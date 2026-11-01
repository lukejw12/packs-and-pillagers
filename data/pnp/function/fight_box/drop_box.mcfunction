execute unless score #hkind pnp.tmp matches 1 run return 0
execute store result score #cx pnp.tmp run data get entity @s Pos[0] 32
execute store result score #cz pnp.tmp run data get entity @s Pos[2] 32
scoreboard players set #fid pnp.tmp 0
execute as @e[type=marker,tag=pnp.fight,distance=..12,sort=nearest] if score #fid pnp.tmp matches 0 run function pnp:fight_box/cursor_in
execute if score #fid pnp.tmp matches 0 as @e[type=item_display,tag=pnp.infight,tag=!pnp.held,distance=..1.2,sort=nearest,limit=1] run scoreboard players operation #fid pnp.tmp = @s pnp.fid
execute if score #fid pnp.tmp matches 0 run return 0
scoreboard players set #route pnp.tmp 1
scoreboard players operation #dfid pnp.tmp = #fid pnp.tmp
execute positioned ~ 65.01 ~ run function pnp:board/drop/free
execute as @e[type=item_display,tag=pnp.card,tag=pnp.k.unit,distance=..64] if score @s pnp.stack = #hsid pnp.tmp at @s run function pnp:fight_box/add_dropped
