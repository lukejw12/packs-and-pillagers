scoreboard players set #nok pnp.tmp 1
$function pnp:card/spawn {card:"$(card)"}
execute in pnp:board as @e[type=item_display,tag=pnp.k.enemy] if score @s pnp.uid = #uid pnp.ids at @s run function pnp:fight/gear/roll
tag @e[type=item_display,tag=pnp.card,distance=..0.4,limit=1,sort=nearest] add pnp.night
particle minecraft:large_smoke ~ ~0.2 ~ 0.2 0.1 0.2 0.01 8
playsound minecraft:entity.zombie.ambient hostile @a[distance=..32] ~ ~ ~ 0.5 0.8
