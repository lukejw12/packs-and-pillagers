$execute store success score #ch pnp.tmp run data modify storage pnp:ideas p$(p).r$(r) set value 1b
execute if score #ch pnp.tmp matches 1 run scoreboard players add #newr pnp.tmp 1
