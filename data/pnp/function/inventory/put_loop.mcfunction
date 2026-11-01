execute unless data storage pnp:board ivl[0] run return 0
execute store result score #isl pnp.tmp run data get storage pnp:board ivl[0].Slot
data modify storage pnp:board ivc set from storage pnp:board ivl[0]
data modify storage pnp:board ivc.Slot set value 0b
$execute in pnp:board run data modify block $(x) 40 2 Items set value []
$execute in pnp:board run data modify block $(x) 40 2 Items append from storage pnp:board ivc
$data modify storage pnp:board ivs2 set value {x:$(x),s:"none",n:0}
execute if score #isl pnp.tmp matches 0..8 run data modify storage pnp:board ivs2.s set value "hotbar"
execute if score #isl pnp.tmp matches 9..35 run data modify storage pnp:board ivs2.s set value "inventory"
execute if score #isl pnp.tmp matches 9..35 run scoreboard players remove #isl pnp.tmp 9
execute store result storage pnp:board ivs2.n int 1 run scoreboard players get #isl pnp.tmp
execute unless data storage pnp:board ivs2{s:"none"} run function pnp:inventory/put_one with storage pnp:board ivs2
data remove storage pnp:board ivl[0]
$function pnp:inventory/put_loop {p:$(p),x:$(x)}
