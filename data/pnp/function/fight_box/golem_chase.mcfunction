tag @e[type=item_display,tag=pnp.gtar] remove pnp.gtar
tag @e[type=item_display,tag=pnp.k.enemy,tag=!pnp.held,distance=..20,sort=nearest,limit=1] add pnp.gtar
execute unless entity @e[type=item_display,tag=pnp.gtar] run return 0
execute if entity @e[type=item_display,tag=pnp.gtar,distance=..1.3] run return run function pnp:fight_box/golem_engage
execute facing entity @e[type=item_display,tag=pnp.gtar,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.14 if block ~ 64 ~ #pnp:table run tp @s ~ ~ ~
tag @e[type=item_display,tag=pnp.gtar] remove pnp.gtar
