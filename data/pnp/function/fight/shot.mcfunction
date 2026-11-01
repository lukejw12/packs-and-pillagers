execute if entity @s[tag=pnp.beam] run return run function pnp:fight/beam
execute if entity @s[tag=pnp.c.evoker] rotated ~ 0 run return run function pnp:fight/fangs/line
execute if entity @s[tag=pnp.c.breeze] run return run function pnp:fight/projectile/launch {m:"pnp:fx/card_wind",s:"minecraft:entity.breeze.shoot"}
execute if entity @s[tag=pnp.w_trident] run return run function pnp:fight/projectile/launch {m:"pnp:fx/card_trident",s:"minecraft:item.trident.throw"}
function pnp:fight/projectile/launch {m:"pnp:fx/card_arrow",s:"minecraft:entity.arrow.shoot"}
