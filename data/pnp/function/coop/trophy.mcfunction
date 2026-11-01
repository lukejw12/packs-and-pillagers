execute unless entity @a[tag=pnp.coophost] run return run title @s actionbar {translate:"pnp.coop.the_shared_table_s_owner_needs",fallback:"The shared table's owner needs to be online for that.",color:"gray"}
execute at @s as @a[tag=pnp.coophost,limit=1] run function pnp:board/size/add_trophy
