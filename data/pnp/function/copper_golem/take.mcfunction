execute if score @s pnp.cgn matches 8.. run return 0
scoreboard players set #mx pnp.tmp -1
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.cg_carry,tag=!pnp.held,distance=..14] if score @s pnp.stack = #ts pnp.tmp run scoreboard players operation #mx pnp.tmp > @s pnp.idx
execute if score #mx pnp.tmp matches ..-1 run return 0
scoreboard players set #tk pnp.tmp 0
$execute as @e[type=item_display,tag=pnp.card,tag=!pnp.cg_carry,tag=!pnp.held,distance=..14] if score @s pnp.stack = #ts pnp.tmp if score @s pnp.idx = #mx pnp.tmp if entity @s[tag=pnp.c.$(c)] run function pnp:copper_golem/take_one
execute if score #tk pnp.tmp matches 0 run return 0
$function pnp:copper_golem/take {c:"$(c)"}
