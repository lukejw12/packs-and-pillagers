execute if entity @e[type=item_display,tag=pnp.gtar,tag=pnp.c.creeper] run return run function pnp:fight_box/golem_creeper
scoreboard players operation #e pnp.tmp = @e[type=item_display,tag=pnp.gtar,limit=1] pnp.uid
tag @e[type=item_display,tag=pnp.gtar] remove pnp.gtar
function pnp:fight_box/drop_join
