$execute in pnp:board positioned $(x) 55 -8 run kill @e[type=!player,dx=48,dy=45,dz=48]
$execute in pnp:board positioned $(x) 64 0 run fill ~ ~ ~ ~31 ~ ~31 minecraft:spruce_planks replace #pnp:felt
$execute in pnp:board positioned $(x) 63 0 run fill ~32 ~ ~ ~47 ~1 ~31 minecraft:air
$execute in pnp:board positioned $(x) 55 -8 positioned ~45 ~ ~ run kill @e[type=!player,dx=44,dy=45,dz=50]
$execute in pnp:board positioned $(x) 63 -2 positioned ~45 ~ ~ run fill ~ ~ ~ ~42 ~1 ~40 minecraft:air
$execute in pnp:board positioned $(x) 55 -8 positioned ~-47 ~ ~ run kill @e[type=!player,dx=46,dy=45,dz=50]
$execute in pnp:board positioned $(x) 63 -2 positioned ~-46 ~ ~ run fill ~ ~ ~ ~45 ~1 ~40 minecraft:air
$execute in pnp:board positioned $(x) 65 -2 run fill ~-46 ~ ~ ~47 ~ ~40 minecraft:air replace minecraft:light
$function pnp:nether/coords {p:$(p)}
function pnp:reset/nether_area with storage pnp:board nt
$data remove storage pnp:qb p$(p)
$data remove storage pnp:ideas p$(p)
$data remove storage pnp:found p$(p)
$data remove storage pnp:gw p$(p)
$data remove storage pnp:graves p$(p)
$data remove storage pnp:ender p$(p)
$data remove storage pnp:pity p$(p)
$data remove storage pnp:packs p$(p)
$data remove storage pnp:inv p$(p)
$data remove storage pnp:deliver p$(p)
$data remove storage pnp:tips p$(p)
$data remove storage pnp:quests p$(p)
$data remove storage pnp:beacon p$(p)
$data remove storage pnp:pedia2 all.p$(p)
$data remove storage pnp:pedia2 v.p$(p)
$data remove storage pnp:board tlast.p$(p)
$data remove storage pnp:nether beacon.p$(p)
$data remove storage pnp:nether biome.p$(p)
$data remove storage pnp:nether built.p$(p)
$data remove storage pnp:nether built2.p$(p)
$data remove storage pnp:nether evday.p$(p)
$data remove storage pnp:nether ruin.p$(p)
$data remove storage pnp:nether unlocked.p$(p)
$data remove storage pnp:nether wither.p$(p)
$data remove storage pnp:pvp names.p$(p)
$data remove storage pnp:board qtk.x$(x)
$scoreboard players reset #bank$(p) pnp.bank
$scoreboard players reset #f$(p) pnp.found
$bossbar remove pnp:hud$(p)
$bossbar remove pnp:tut$(p)
$bossbar remove pnp:gw$(p)
