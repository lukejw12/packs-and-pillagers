$execute in pnp:board positioned $(x) 65.01 2 positioned ~$(rx) ~ ~ run function pnp:card/spawn {card:"$(enemy)"}
execute in pnp:board as @e[type=item_display,tag=pnp.k.enemy] if score @s pnp.uid = #uid pnp.ids at @s run function pnp:fight/gear/roll
