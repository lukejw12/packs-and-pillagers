execute unless block ~ ~ ~ #pnp:airs run return 0
$execute unless block ~ ~ ~ minecraft:light[level=10] run setblock ~ ~ ~ minecraft:light[level=$(l)]
$summon marker ~ ~ ~ {Tags:["pnp.lamp","pnp.lamp$(l)"]}
