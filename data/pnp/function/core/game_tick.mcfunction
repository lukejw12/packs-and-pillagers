execute as @e[type=item_display,tag=pnp.card,scores={pnp.recipe=1..}] at @s run function pnp:board/recipe/tick
execute as @e[type=item_display,tag=pnp.k.enemy] at @s run function pnp:fight/enemy_tick
execute as @e[type=item_display,tag=pnp.c.evoker] at @s run function pnp:fight/evoker/tick
execute as @e[type=item_display,tag=pnp.c.vex] at @s run function pnp:fight/vex_tick
execute as @e[type=marker,tag=pnp.fight] at @s run function pnp:fight_box/tick
execute as @e[type=item_display,tag=pnp.card,scores={pnp.hb=1..}] at @s run function pnp:fight/hop_tick
scoreboard players add #rc pnp.ids 1
execute if score #rc pnp.ids matches 20.. run function pnp:raid/clock
execute as @e[type=item_display,tag=pnp.traveler] at @s run function pnp:route/traveler/tick
scoreboard players add #lc pnp.ids 1
execute if score #lc pnp.ids matches 5.. run function pnp:logistics/clock
execute as @e[type=item_display,tag=pnp.proj] at @s run function pnp:fight/projectile/tick
execute as @e[type=item_display,tag=pnp.boss] at @s run function pnp:gateway/boss/tick
execute as @a[scores={pnp.gws=1..}] at @s run function pnp:gateway/tick
execute as @e[type=item_display,tag=pnp.illusion] run function pnp:gateway/illusioner/life
execute as @e[type=item_display,tag=pnp.blinded] run function pnp:gateway/blind/decrease
execute as @a[scores={pnp.blind=1..}] at @s run function pnp:gateway/blind/tick
execute as @e[type=item_display,tag=pnp.fxfang] at @s run function pnp:fight/fangs/effect_tick
execute as @e[type=item_display,tag=pnp.fx_on] at @s run function pnp:fight/effects/tick
execute as @e[type=item_display,tag=pnp.c.copper_golem,tag=!pnp.held] at @s run function pnp:copper_golem/tick
execute as @e[type=item_display,tag=pnp.k.animal,tag=!pnp.held] at @s if entity @a[tag=pnp.in_board,distance=..40] run function pnp:wander/animal
scoreboard players add #w10 pnp.ids 1
execute if score #w10 pnp.ids matches 10.. run scoreboard players set #w10 pnp.ids 0
execute as @e[type=item_display,tag=pnp.k.baby,tag=!pnp.held] at @s if entity @a[tag=pnp.in_board,distance=..40] run function pnp:wander/baby
