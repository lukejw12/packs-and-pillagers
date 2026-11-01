$data modify storage pnp:board rt.c set from storage pnp:cards smelt.$(c)
scoreboard players set #sent pnp.tmp 0
execute if entity @s[tag=pnp.hasout] run function pnp:route/send
execute if score #sent pnp.tmp matches 0 run function pnp:logistics/pop_output with storage pnp:board rt
