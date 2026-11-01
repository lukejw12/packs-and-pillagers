kill @e[type=interaction,tag=pnp.wsi,distance=..1.5]
execute as @e[type=item,distance=..2] if items entity @s contents minecraft:lodestone run kill @s
summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{pnp:{waystone:1b}},"minecraft:item_model":"minecraft:lodestone","minecraft:custom_name":{translate:"pnp.card.waypoint.name",fallback:"Waystone",italic:false,color:"aqua"},"minecraft:lore":[{translate:"pnp.waystone.right_click_where_you_want_a",fallback:"Right-click where you want a waystone.",color:"gray",italic:false}]}},PickupDelay:10}
particle minecraft:end_rod ~ ~ ~ 0.3 0.3 0.3 0.02 15
playsound minecraft:block.respawn_anchor.deplete master @a[distance=..16] ~ ~ ~ 0.7 1.3
scoreboard players operation #wk pnp.tmp = @s pnp.wid
execute in pnp:board as @e[type=item_display,tag=pnp.c.waypoint] run function pnp:waystone/card_match
kill @s
