$data modify storage pnp:board pdi.e set from storage pnp:cards drinks.$(c)
data modify storage pnp:board pdi.u set from entity @s item.components."minecraft:custom_data".card
function pnp:progression/drink_e with storage pnp:board pdi
$title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.potion.drank",fallback:"Drank: %s",with:[{translate:"pnp.card.$(c).name"}],color:"light_purple"}
particle minecraft:effect ~ ~0.4 ~ 0.25 0.2 0.25 0 12
playsound minecraft:entity.generic.drink master @a[distance=..24] ~ ~ ~ 0.7 1.2
