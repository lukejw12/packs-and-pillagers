tag @a remove pnp.vhost
tag @s add pnp.vme
scoreboard players set #vray pnp.tmp 0
execute anchored eyes positioned ^ ^ ^0.5 run function pnp:multiplayer/visit/raycast
tag @s remove pnp.vme
execute unless entity @a[tag=pnp.vhost] run return fail
execute unless entity @a[tag=pnp.vhost,scores={pnp.plot=2}] run return run function pnp:multiplayer/visit/none
execute store result storage pnp:board vis.h int 1 run scoreboard players get @a[tag=pnp.vhost,limit=1] pnp.pid
function pnp:multiplayer/visit/by_id with storage pnp:board vis
tellraw @s [{text:"You joined ",color:"green"},{selector:"@a[tag=pnp.vhost]"},{text:"'s card table. Sneak to go back.",color:"green"}]
tellraw @a[tag=pnp.vhost] [{selector:"@s"},{text:" joined your card table.",color:"green"}]
tag @a remove pnp.vhost
return 1
