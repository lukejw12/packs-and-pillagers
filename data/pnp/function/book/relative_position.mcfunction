scoreboard players operation #f pnp.tmp = #ey pnp.tmp
scoreboard players remove #f pnp.tmp 65450
scoreboard players operation #f pnp.tmp *= #1000 pnp.tmp
scoreboard players operation #den pnp.tmp = #ey pnp.tmp
scoreboard players remove #den pnp.tmp 65000
scoreboard players operation #f pnp.tmp /= #den pnp.tmp
scoreboard players operation #px pnp.tmp = #hx pnp.tmp
scoreboard players operation #px pnp.tmp -= #ex pnp.tmp
scoreboard players operation #px pnp.tmp *= #f pnp.tmp
scoreboard players operation #px pnp.tmp /= #1000 pnp.tmp
scoreboard players operation #px pnp.tmp += #ex pnp.tmp
scoreboard players operation #px pnp.tmp -= #bx pnp.tmp
scoreboard players operation #pz pnp.tmp = #hz pnp.tmp
scoreboard players operation #pz pnp.tmp -= #ez pnp.tmp
scoreboard players operation #pz pnp.tmp *= #f pnp.tmp
scoreboard players operation #pz pnp.tmp /= #1000 pnp.tmp
scoreboard players operation #pz pnp.tmp += #ez pnp.tmp
scoreboard players operation #pz pnp.tmp -= #bz pnp.tmp
