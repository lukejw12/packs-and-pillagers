scoreboard players operation #ics pnp.tmp = #day pnp.tmp
scoreboard players operation #ics pnp.tmp %= #2 pnp.tmp
execute if score #ics pnp.tmp matches 1 run return 1
return 0
