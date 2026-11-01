execute unless score #kx pnp.tmp matches 1 run return 0
execute if score #pool pnp.tmp < #rk pnp.tmp run return 0
scoreboard players operation #pool pnp.tmp -= #rk pnp.tmp
execute as @e[type=item_display,scores={pnp.vord=1..}] if score @s pnp.vown = #me pnp.tmp if score @s pnp.vord = #k pnp.tmp run tag @s add pnp.fed
scoreboard players add #k pnp.tmp 1
function pnp:supper/need_for_kind
function pnp:supper/settle
