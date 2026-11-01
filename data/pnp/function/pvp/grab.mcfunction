data modify storage pnp:pvp sv set value {}
execute store result storage pnp:pvp sv.i int 1 run scoreboard players get @s pnp.pvi
execute store result storage pnp:pvp sv.hp int 1 run scoreboard players get @s pnp.hp
$data modify storage pnp:pvp a$(p).surv append from storage pnp:pvp sv
scoreboard players set #stole pnp.tmp 0
data modify storage pnp:pvp sl set from storage pnp:cards steal
$data modify storage pnp:pvp sg set value {p:$(p),x:$(x)}
function pnp:pvp/grab_loop
particle minecraft:poof ~ ~0.3 ~ 0.25 0.1 0.25 0.02 10
function pnp:card/remove
