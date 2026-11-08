$data modify storage pnp:board en set from entity @s item.components."minecraft:custom_data".eq.$(s)e
execute as @e[type=item_display,tag=pnp.card] if score @s pnp.uid = #uid pnp.ids run function pnp:enchant/set_from_storage
