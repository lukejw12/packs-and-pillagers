particle minecraft:explosion_emitter ~ ~0.3 ~ 0 0 0 0 1
playsound minecraft:entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 1
data modify storage pnp:board cause set value "Blown up by a Creeper"
tag @s add pnp.boom
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.boom,tag=!pnp.held,distance=..1.8] if score @s pnp.hp matches 1.. at @s run function pnp:night/blast_hit
function pnp:card/remove
