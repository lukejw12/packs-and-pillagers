tag @s add pnp.rmin
execute unless entity @s[tag=pnp.rt] run function pnp:fight/tag_role
title @a[distance=..48] times 5 50 15
title @a[distance=..48] title {translate:"pnp.card.redstone_monstrosity.name",fallback:"Redstone Monstrosity",color:"dark_red"}
playsound minecraft:entity.wither.spawn hostile @a[distance=..48] ~ ~ ~ 0.7 0.8
particle minecraft:explosion_emitter ~ ~0.5 ~ 0 0 0 0 1
particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~0.3 ~ 1.5 0.2 1.5 0 60
