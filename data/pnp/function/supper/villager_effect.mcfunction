execute if entity @s[tag=pnp.unfed] run particle minecraft:angry_villager ~ ~0.35 ~ 0.2 0.1 0.2 0 3
execute if entity @s[tag=pnp.unfed] run playsound minecraft:entity.villager.no master @a[distance=..40] ~ ~ ~ 0.7 1
execute if entity @s[tag=pnp.partfed] run particle minecraft:smoke ~ ~0.35 ~ 0.15 0.1 0.15 0.01 6
execute if entity @s[tag=pnp.fed] run particle minecraft:happy_villager ~ ~0.35 ~ 0.2 0.1 0.2 0 5
execute if entity @s[tag=pnp.fed] run playsound minecraft:entity.villager.yes master @a[distance=..40] ~ ~ ~ 0.5 1.2
