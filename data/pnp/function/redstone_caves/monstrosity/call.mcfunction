$tag @s add $(t)
playsound minecraft:entity.evoker.prepare_summon hostile @a[distance=..40] ~ ~ ~ 1 0.6
particle minecraft:dust{color:[1.0,0.1,0.1],scale:2.0} ~ ~0.5 ~ 1 0.4 1 0 30
execute positioned ~1.4 ~ ~0.9 run function pnp:card/spawn {card:"redstone_cube"}
execute positioned ~-1.4 ~ ~0.9 run function pnp:card/spawn {card:"redstone_cube"}
execute as @e[type=item_display,tag=pnp.c.redstone_cube,tag=!pnp.rt,distance=..4] run function pnp:fight/tag_role
$execute if score #c$(shield) pnp.tmp matches 1 run tag @s add pnp.rm_shield
