particle minecraft:explosion ~ ~0.2 ~ 0 0 0 0 1
playsound minecraft:item.mace.smash_ground master @a[distance=..24] ~ ~ ~ 0.6 1
execute as @e[type=item_display,tag=pnp.k.enemy,tag=!pnp.held,tag=!pnp.tgt,distance=..1.4] at @s run function pnp:fight/hit
