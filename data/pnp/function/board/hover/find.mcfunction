execute positioned ~-0.4375 64.5 ~-0.5 as @e[type=item_display,tag=pnp.card,tag=!pnp.held,dx=0,dy=1,dz=0] positioned ~-0.125 ~ ~ if entity @s[dx=0,dy=1,dz=0] run tag @s add pnp.cand
scoreboard players set #best pnp.tmp -1000000
execute as @e[type=item_display,tag=pnp.cand,distance=..3] store result score @s pnp.tmp run data get entity @s Pos[1] 1000
scoreboard players operation #best pnp.tmp > @e[type=item_display,tag=pnp.cand,distance=..3] pnp.tmp
execute as @e[type=item_display,tag=pnp.cand,distance=..3] if score @s pnp.tmp = #best pnp.tmp run scoreboard players operation #h pnp.tmp = @s pnp.uid
tag @e[type=item_display,tag=pnp.cand,distance=..3] remove pnp.cand
