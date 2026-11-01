scoreboard players set #hs pnp.tmp 0
scoreboard players set #hn pnp.tmp 0
$execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held,tag=!pnp.infight,tag=!pnp.cg_carry,distance=..40,scores={pnp.idx=0}] if entity @s[tag=pnp.c.$(c)] at @s run function pnp:copper_golem/home_one
