execute unless data storage pnp:pvp ab.list[0] run return 0
execute store result storage pnp:pvp sv.i int 1 run scoreboard players get #pi pnp.tmp
data modify storage pnp:pvp sv.hp set from storage pnp:pvp ab.list[0].hp
$data modify storage pnp:pvp a$(p).surv append from storage pnp:pvp sv
data remove storage pnp:pvp ab.list[0]
scoreboard players add #pi pnp.tmp 1
$function pnp:pvp/abort_loop {p:$(p)}
