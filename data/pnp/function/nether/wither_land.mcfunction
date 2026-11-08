execute unless entity @s[tag=pnp.wranged] run return 0
tag @s remove pnp.wranged
tag @s remove pnp.ranged
particle minecraft:large_smoke ~ ~0.2 ~ 0.4 0.1 0.4 0.02 20
playsound minecraft:entity.wither.hurt hostile @a[distance=..32] ~ ~ ~ 0.6 0.8
title @a[distance=..32,tag=pnp.in_board] actionbar {translate:"pnp.nether.wither_lands",fallback:"The Wither lands. Melee attacks can hurt it again.",color:"gray"}
