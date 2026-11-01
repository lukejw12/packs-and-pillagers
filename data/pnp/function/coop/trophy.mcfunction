execute unless entity @a[tag=pnp.coophost] run return run title @s actionbar {text:"The shared table's owner needs to be online for that.",color:"gray"}
execute at @s as @a[tag=pnp.coophost,limit=1] run function pnp:board/size/add_trophy
