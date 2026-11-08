$execute store result score #enc pnp.tmp run data get storage pnp:ender p$(p).l
data modify storage pnp:board enp.card set from storage pnp:machine io.c
execute if score #enc pnp.tmp matches 27.. run function pnp:card/pop with storage pnp:board enp
execute if score #enc pnp.tmp matches 27.. run return run title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.ender.full",fallback:"The Ender Chest is full.",color:"gray"}
$data modify storage pnp:ender p$(p).l append from storage pnp:machine io.c
