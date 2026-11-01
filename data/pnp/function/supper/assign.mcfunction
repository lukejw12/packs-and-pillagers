scoreboard players set #k pnp.tmp 1
scoreboard players operation #pool pnp.tmp = #bpts pnp.tmp
function pnp:supper/need_for_kind
function pnp:supper/settle
scoreboard players set #m pnp.tmp 1
execute if score #mo pnp.tmp matches 1.. run function pnp:supper/assign_loop
execute if score #kx pnp.tmp matches 1 if score #pool pnp.tmp matches 1.. as @e[type=item_display,scores={pnp.vord=1..}] if score @s pnp.vown = #me pnp.tmp if score @s pnp.vord = #k pnp.tmp run tag @s add pnp.partfed
execute as @e[type=item_display,scores={pnp.vord=1..}] if score @s pnp.vown = #me pnp.tmp unless entity @s[tag=pnp.fed] unless entity @s[tag=pnp.partfed] run tag @s add pnp.unfed
