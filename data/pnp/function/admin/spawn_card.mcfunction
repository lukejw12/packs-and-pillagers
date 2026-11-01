$function pnp:card/spawn {card:"$(c)"}
$execute as @e[type=item_display,tag=pnp.card,distance=..3] if score @s pnp.uid = #uid pnp.ids if entity @s[tag=pnp.k.quest] at @s run function pnp:admin/setup_quest {c:"$(c)"}
particle minecraft:end_rod ~ ~0.3 ~ 0.2 0.1 0.2 0.02 8
playsound minecraft:block.amethyst_block.chime master @a[distance=..40] ~ ~ ~ 0.8 1.4
$data modify storage pnp:board adm.n set from storage pnp:cards defs.$(c).name
function pnp:admin/spawn_message with storage pnp:board adm
