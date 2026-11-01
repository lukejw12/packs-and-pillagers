$execute store success score #tc pnp.tmp run data modify storage pnp:board tlast.p$(p) set from storage pnp:board tt
execute if score #tc pnp.tmp matches 0 run return 0
execute as @e[type=text_display,tag=pnp.tooltip] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set from storage pnp:board tt
