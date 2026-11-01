scoreboard players set @s pnp.fdirty 0
scoreboard players set #nu pnp.tmp 0
scoreboard players set #ne pnp.tmp 0
execute as @e[type=item_display,tag=pnp.infight,distance=..14] if score @s pnp.fid = #fid pnp.tmp if score @s pnp.fside matches 1 run scoreboard players add #nu pnp.tmp 1
execute as @e[type=item_display,tag=pnp.infight,distance=..14] if score @s pnp.fid = #fid pnp.tmp if score @s pnp.fside matches 2 run scoreboard players add #ne pnp.tmp 1
execute as @e[type=item_display,tag=pnp.infight,distance=..14] if score @s pnp.fid = #fid pnp.tmp at @s run function pnp:fight_box/place
scoreboard players operation #nw pnp.tmp = #nu pnp.tmp
execute if score #ne pnp.tmp > #nw pnp.tmp run scoreboard players operation #nw pnp.tmp = #ne pnp.tmp
scoreboard players operation #bw pnp.tmp = #nw pnp.tmp
scoreboard players operation #bw pnp.tmp *= #40 pnp.tmp
scoreboard players add #bw pnp.tmp 16
scoreboard players operation @s pnp.fhw = #bw pnp.tmp
scoreboard players operation @s pnp.fhw /= #2 pnp.tmp
execute store result storage pnp:board fbx.w float 0.03125 run scoreboard players get #bw pnp.tmp
scoreboard players operation #bh pnp.tmp = #bw pnp.tmp
execute store result storage pnp:board fbx.x float -0.015625 run scoreboard players get #bh pnp.tmp
execute as @e[type=item_display,tag=pnp.fbox] if score @s pnp.fid = #fid pnp.tmp run function pnp:fight_box/box_with_width with storage pnp:board fbx
execute as @e[type=item_display,tag=pnp.fbox] if score @s pnp.fid = #fid pnp.tmp run tp @s ~ 65.003 ~
function pnp:fight_box/absorb
