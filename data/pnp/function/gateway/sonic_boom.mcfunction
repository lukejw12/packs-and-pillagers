scoreboard players set @s pnp.spell 0
execute unless entity @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..10] run return 0
tag @e[type=item_display,tag=pnp.sonic_t] remove pnp.sonic_t
tag @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..10,sort=furthest,limit=1] add pnp.sonic_t
execute as @e[type=item_display,tag=pnp.sonic_t,limit=1] run scoreboard players operation #t pnp.tmp = @s pnp.uid
execute facing entity @e[type=item_display,tag=pnp.sonic_t,limit=1] feet run function pnp:gateway/sonic_boom_effect
execute facing entity @e[type=item_display,tag=pnp.sonic_t,limit=1] feet run function pnp:fight/projectile/launch {m:"pnp:fx/card_sonic",s:"minecraft:entity.warden.sonic_boom"}
data modify storage pnp:board cause set value "Sonic boom from the Warden"
scoreboard players set #atk pnp.tmp 3
execute as @e[type=item_display,tag=pnp.sonic_t,limit=1] at @s run function pnp:fight/hit
