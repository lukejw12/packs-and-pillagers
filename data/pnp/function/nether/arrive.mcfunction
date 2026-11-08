execute as @e[type=item_display,tag=pnp.pmv] run tp @s ~ 65.01 ~1.8
scoreboard players operation #lsid pnp.tmp = #ns pnp.tmp
execute as @e[type=item_display,tag=pnp.pmv,scores={pnp.idx=0},limit=1] at @s run function pnp:board/stack/layout
execute as @e[type=item_display,tag=pnp.pmv,scores={pnp.idx=0},limit=1] at @s run function pnp:board/stack/check
execute if score #px pnp.tmp matches 400.. as @e[type=item_display,tag=pnp.pmv,tag=pnp.c.piglin_ally] at @s run function pnp:nether/zombify_ally
execute if score #px pnp.tmp matches 400.. as @e[type=item_display,tag=pnp.pmv,tag=pnp.c.hoglin] at @s run function pnp:nether/zoglinify
tag @e[type=item_display,tag=pnp.pmv] remove pnp.pmv
particle minecraft:portal ~ ~0.3 ~1.8 0.3 0.2 0.3 0.5 40
playsound minecraft:block.portal.travel block @a[distance=..24] ~ ~ ~ 0.2 1.8
