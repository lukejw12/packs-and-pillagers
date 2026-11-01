execute as @e[type=item_display,tag=pnp.meal] if score @s pnp.mown = #me pnp.tmp at @s run function pnp:supper/animation/arrive_effect
execute as @e[type=item_display,tag=pnp.sfocus] if score @s pnp.vown = #me pnp.tmp run tag @s remove pnp.sfocus
function pnp:supper/animation/close
