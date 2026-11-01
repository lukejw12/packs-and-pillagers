execute unless score #g4 pnp.tmp matches 0 unless entity @a[tag=pnp.in_board,distance=..40] run return 0
execute unless score @s pnp.rspd matches 1.. run scoreboard players set @s pnp.rspd 2
scoreboard players operation @s pnp.timer += @s pnp.rspd
scoreboard players operation #p pnp.tmp = @s pnp.timer
scoreboard players operation #p pnp.tmp *= #875 pnp.tmp
scoreboard players operation #p pnp.tmp /= @s pnp.rtime
scoreboard players operation #bsid pnp.tmp = @s pnp.stack
execute as @e[type=block_display,tag=pnp.bar_fill,distance=..3] if score @s pnp.stack = #bsid pnp.tmp store result entity @s transformation.scale[0] float 0.001 run scoreboard players get #p pnp.tmp
execute if score @s pnp.timer >= @s pnp.rtime run function pnp:board/recipe/done
