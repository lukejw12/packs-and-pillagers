$data modify storage pnp:board si.c set from entity @s item.components."minecraft:custom_data".eq.$(s)
$data modify storage pnp:board si.n set value $(n)
function pnp:villager/slots/icon_for_card with storage pnp:board si
