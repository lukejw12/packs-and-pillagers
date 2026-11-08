tag @e[type=item_display,tag=pnp.pvw] remove pnp.pvw
execute as @e[type=item_display,tag=pnp.k.shop,distance=..64] if score @s pnp.uid = #uid pnp.tmp run tag @s add pnp.pvw
execute if entity @e[type=item_display,tag=pnp.pvw,tag=pnp.c.shop_humble] run function pnp:book/open_pack {s:4}
execute if entity @e[type=item_display,tag=pnp.pvw,tag=pnp.c.shop_farm] run function pnp:book/open_pack {s:5}
execute if entity @e[type=item_display,tag=pnp.pvw,tag=pnp.c.shop_adventure] run function pnp:book/open_pack {s:6}
execute if entity @e[type=item_display,tag=pnp.pvw,tag=pnp.c.shop_combat] run function pnp:book/open_pack {s:7}
execute if entity @e[type=item_display,tag=pnp.pvw,tag=pnp.c.shop_caving] run function pnp:book/open_pack {s:8}
execute if entity @e[type=item_display,tag=pnp.pvw,tag=pnp.c.wandering_trader] run function pnp:book/open_pack {s:9}
execute if entity @e[type=item_display,tag=pnp.pvw,tag=pnp.c.shop_wastes] run function pnp:book/open_pack {s:10}
execute if entity @e[type=item_display,tag=pnp.pvw,tag=pnp.c.shop_fortress] run function pnp:book/open_pack {s:11}
execute if entity @e[type=item_display,tag=pnp.pvw,tag=pnp.c.shop_bastion] run function pnp:book/open_pack {s:12}
execute if entity @e[type=item_display,tag=pnp.pvw,tag=pnp.c.piglin_merchant] run function pnp:book/open_pack {s:13}
tag @e[type=item_display,tag=pnp.pvw] remove pnp.pvw
