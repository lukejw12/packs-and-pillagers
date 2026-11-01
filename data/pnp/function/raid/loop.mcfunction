execute if score #rn pnp.tmp matches ..0 run return 0
execute store result storage pnp:board tmp.rx int 1 run random value 3..28
data modify storage pnp:board tmp.enemy set value "pillager"
execute store result score #kind pnp.tmp run random value 1..6
execute if score #kind pnp.tmp matches 1..2 run data modify storage pnp:board tmp.enemy set value "vindicator"
execute if score #kind pnp.tmp matches 6 if score #day pnp.tmp matches 6.. run data modify storage pnp:board tmp.enemy set value "ravager"
function pnp:raid/spawn with storage pnp:board tmp
scoreboard players remove #rn pnp.tmp 1
function pnp:raid/loop
