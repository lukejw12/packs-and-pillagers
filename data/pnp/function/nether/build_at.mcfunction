$execute in pnp:board run forceload add $(x) 0 $(x2) 31
$execute in pnp:board run fill $(x) 64 0 $(x2) 64 31 minecraft:blackstone replace minecraft:air
$execute in pnp:board positioned $(x) 64 0 run fill ~5 ~ ~5 ~26 ~ ~26 minecraft:nether_bricks
$execute in pnp:board positioned $(x) 64 0 run fill ~6 ~ ~6 ~25 ~ ~25 minecraft:red_wool
$execute in pnp:board positioned $(x) 64 0 run setblock ~5 ~ ~5 minecraft:shroomlight
$execute in pnp:board positioned $(x) 64 0 run setblock ~26 ~ ~5 minecraft:shroomlight
$execute in pnp:board positioned $(x) 64 0 run setblock ~5 ~ ~26 minecraft:shroomlight
$execute in pnp:board positioned $(x) 64 0 run setblock ~26 ~ ~26 minecraft:shroomlight
$execute if score #nfresh pnp.tmp matches 1 in pnp:board positioned $(cx) 65.01 22 run function pnp:card/spawn {card:"nether_portal"}
$execute if score #nfresh pnp.tmp matches 1 in pnp:board positioned $(cx) 65.01 12 run function pnp:card/spawn {card:"nether_wastes"}
