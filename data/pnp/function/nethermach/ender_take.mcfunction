$execute unless data storage pnp:ender p$(p).l[0] run return run title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.ender.empty",fallback:"The Ender Chest is empty.",color:"gray"}
$data modify storage pnp:board enc.card set from storage pnp:ender p$(p).l[-1]
$data remove storage pnp:ender p$(p).l[-1]
function pnp:card/pop with storage pnp:board enc
playsound minecraft:block.ender_chest.open master @a[distance=..24] ~ ~ ~ 0.6 1
