execute if score #lbs pnp.tmp matches 27.. run return 0
execute store result storage pnp:board lbo.s int 1 run scoreboard players get #lbs pnp.tmp
execute if function pnp:linkbarrel/push_try run return 1
scoreboard players add #lbs pnp.tmp 1
function pnp:linkbarrel/push_loop
