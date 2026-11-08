$execute store result score #odd pnp.tmp run data get storage pnp:qb p$(p).odawn
execute if score #odd pnp.tmp = #day pnp.tmp run return 0
$execute store result storage pnp:qb p$(p).odawn int 1 run scoreboard players get #day pnp.tmp
$function pnp:board/plot/coords_for {p:$(p)}
$data modify storage pnp:board ord.p set value $(p)
function pnp:orders/expire_all
scoreboard players operation #odm pnp.tmp = #day pnp.tmp
scoreboard players operation #odm pnp.tmp %= #3 pnp.tmp
execute unless score #odm pnp.tmp matches 0 run return 0
function pnp:orders/try with storage pnp:board ord
