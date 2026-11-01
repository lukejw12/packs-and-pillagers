execute as @e[type=item_display,tag=pnp.sfocus] if score @s pnp.vown = #me pnp.tmp run tag @s remove pnp.sfocus
execute as @e[type=item_display,scores={pnp.vord=1..}] if score @s pnp.vown = #me pnp.tmp if score @s pnp.vord = #sk pnp.tmp run tag @s add pnp.sfocus
scoreboard players set #kx pnp.tmp 0
execute as @e[type=item_display,tag=pnp.sfocus] if score @s pnp.vown = #me pnp.tmp run scoreboard players set #kx pnp.tmp 1
execute if score #kx pnp.tmp matches 0 run return run function pnp:supper/animation/next_villager
execute store result storage pnp:board scam.d int 1 run scoreboard players get #dmove pnp.tmp
function pnp:supper/camera/go with storage pnp:board scam
rotate @s 180 56
