$data modify storage pnp:graves p$(p) prepend from storage pnp:board gr
$data remove storage pnp:graves p$(p)[5]
$tellraw @a[scores={pnp.here=$(p)}] [{text:"☠ ",color:"dark_gray"},{text:"$(n)",color:"white"},{text:" ",extra:[{translate:"pnp.villager.died",fallback:"died. %s.",with:["$(c)"]}],color:"gray"}]
