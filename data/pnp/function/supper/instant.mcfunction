execute as @e[type=item_display,tag=pnp.meal] if score @s pnp.mown = #me pnp.tmp at @s run function pnp:supper/animation/arrive_effect
function pnp:supper/finish_for_player
