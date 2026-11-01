execute unless entity @a[tag=pnp.coophost] run return run title @s actionbar {translate:"pnp.coop.the_shared_table_s_owner_needs_2",fallback:"The shared table's owner needs to be online to grow it.",color:"gray"}
tag @s add pnp.leafer
execute as @a[tag=pnp.coophost,limit=1] run function pnp:coop/leaf_host
tag @s remove pnp.leafer
