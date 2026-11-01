scoreboard players remove @s pnp.epoi 1
scoreboard players operation #pz pnp.tmp = @s pnp.epoi
scoreboard players operation #pz pnp.tmp %= #25 pnp.tmp
execute if score #pz pnp.tmp matches 0 if score @s pnp.hp matches 2.. run function pnp:fight/effects/poison_tick
