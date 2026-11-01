$execute store result score #sv pnp.tmp run data get storage pnp:cards defs.$(card).sell
execute if score #sv pnp.tmp matches 1.. run return run function pnp:board/drop/take_sale
scoreboard players add #nosell pnp.tmp 1
