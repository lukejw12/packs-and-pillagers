tag @e[type=item_display,tag=pnp.lcm] remove pnp.lcm
execute as @e[type=item_display,tag=pnp.cm,distance=..64] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx matches 0 run tag @s add pnp.lcm
scoreboard players set #bad pnp.tmp 0
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:machine/drop_check
execute as @e[type=item_display,tag=pnp.lcm,limit=1] run function pnp:machine/space
scoreboard players operation #mq pnp.tmp += #hsize pnp.tmp
execute if score #bad pnp.tmp matches 0 if score #mq pnp.tmp > #mcap pnp.tmp run scoreboard players set #bad pnp.tmp 2
execute if score #bad pnp.tmp matches 1 run title @s actionbar {translate:"pnp.machine.cant_take",fallback:"That doesn't go in there.",color:"red"}
execute if score #bad pnp.tmp matches 2 run title @s actionbar {translate:"pnp.machine.full",fallback:"There isn't room for that many.",color:"red"}
execute if score #bad pnp.tmp matches 3 run title @s actionbar {translate:"pnp.machine.cant_hold_living",fallback:"The Ender Chest can't hold villagers, animals, or monsters.",color:"red"}
execute if score #bad pnp.tmp matches 1.. run tag @e[type=item_display,tag=pnp.lcm] remove pnp.lcm
execute if score #bad pnp.tmp matches 1.. run return run scoreboard players set #route pnp.tmp 2
scoreboard players set #route pnp.tmp 1
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:machine/drop_one
execute as @e[type=item_display,tag=pnp.lcm,limit=1] at @s run playsound minecraft:block.copper.place block @a[distance=..24] ~ ~ ~ 0.8 1.2
tag @e[type=item_display,tag=pnp.lcm] remove pnp.lcm
