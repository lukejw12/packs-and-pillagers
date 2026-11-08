$data modify storage pnp:board ch.o set value "$(o)"
data modify storage pnp:board ch.f set string storage pnp:board ch.o 0 1
execute if data storage pnp:board ch{f:"@"} run return run function pnp:board/recipe/output_pool
execute if data storage pnp:board ch{f:"#"} run return run function pnp:enchant/apply
$function pnp:card/pop {card:"$(o)"}
$execute if data storage pnp:cards brew.$(o) run function pnp:chapter2/event_at {qk:"brew"}
execute if data storage pnp:board cbx.bt if data storage pnp:board ch{o:"copper_barrel"} as @e[type=item_display,tag=pnp.c.copper_barrel,distance=..4] if score @s pnp.uid = #uid pnp.ids at @s run function pnp:logistics/barrel/load_contents
