$summon item_display ~ ~ ~ {Tags:["pnp.card","pnp.card_new","pnp.v2","pnp.v3","pnp.v4","pnp.v5","pnp.v6","pnp.v5","pnp.v8","pnp.c.$(id)","pnp.k.$(kind)"],teleport_duration:2,brightness:{sky:15,block:15},item_display:"none",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"pnp:card/$(id)","minecraft:custom_data":{card:"$(id)"}}},transformation:{left_rotation:[0f,0.7071068f,-0.7071068f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.00625f,0f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:text_display",Tags:["pnp.card_part"],brightness:{sky:15,block:15},text:{translate:"pnp.card.$(id).name",fallback:"$(name)",color:"black"},background:0,shadow:0b,line_width:$(lw),transformation:{left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.0145f,$(tz)f],scale:[$(ts)f,$(ts)f,$(ts)f]}}]}
scoreboard players add #uid pnp.ids 1
scoreboard players add #stack pnp.ids 1
$execute as @e[type=item_display,tag=pnp.card_new,distance=..0.01] run function pnp:card/init {hp:$(hp),atk:$(atk)}
$execute as @e[type=item_display,tag=pnp.k.shop,tag=pnp.c.$(id),distance=..0.01] run function pnp:shop/setup {price:$(price)}
$execute as @e[type=item_display,tag=pnp.card,distance=..0.01] if score @s pnp.uid = #uid pnp.ids run function pnp:cardopedia/mark_found {c:"$(id)"}
execute as @e[type=item_display,tag=pnp.c.enchanted_book,distance=..0.01] if score @s pnp.uid = #uid pnp.ids run function pnp:enchanted_book/roll
execute as @e[type=item_display,tag=pnp.c.copper_barrel,distance=..0.01] if score @s pnp.uid = #uid pnp.ids run tag @s add pnp.c.barrel
$execute if data storage pnp:cards machine.$(id) as @e[type=item_display,tag=pnp.card,distance=..0.01] if score @s pnp.uid = #uid pnp.ids run function pnp:card/machine {id:"$(id)"}
$execute if data storage pnp:cards machines.$(id) as @e[type=item_display,tag=pnp.card,distance=..0.01] if score @s pnp.uid = #uid pnp.ids run tag @s add pnp.cm
