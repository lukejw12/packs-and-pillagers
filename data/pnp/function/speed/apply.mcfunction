scoreboard players operation #pstate pnp.ids = #pnew pnp.tmp
execute if score #pstate pnp.ids matches 0 run gamerule advance_time false
execute if score #pstate pnp.ids matches 1.. run gamerule advance_time true
execute if score #pstate pnp.ids matches ..1 run gamerule random_tick_speed 3
execute if score #pstate pnp.ids matches 2 run gamerule random_tick_speed 6
execute if score #pstate pnp.ids matches 4 run gamerule random_tick_speed 12
execute as @a[tag=pnp.in_board] run function pnp:hud/update
execute unless score #pstate pnp.ids matches 0 run kill @e[type=item_display,tag=pnp.fxpause]
execute if score #psup pnp.ids matches 1.. run gamerule advance_time false
